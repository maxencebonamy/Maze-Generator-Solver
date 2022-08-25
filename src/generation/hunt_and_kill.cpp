#include "hunt_and_kill.hpp"

void HuntAndKill::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    Generation::init(map, wallColor);

    (*_map)[_currentCell.getY()][_currentCell.getX()] = _getColor(_currentCell);
}

void HuntAndKill::update() {
    if (!_hasFinished) {
        if (!_isFullNeighbors(_currentCell)) {
            Vector2 newPos;
            do {
                newPos = _currentCell + 2 * _DIRECTIONS[rand() % 4];
            } while (!_isInBounds(newPos) || (*_map)[newPos.getX()][newPos.getY()] != _wallColor);

            Vector2 wall { (_currentCell + newPos) / 2 };
            (*_map)[wall.getX()][wall.getY()] = _getColor(wall);
            (*_map)[newPos.getX()][newPos.getY()] = _getColor(newPos);
            _currentCell = newPos;
        }

        else {
            int width { static_cast<int>(_map->size()) },
                height { static_cast<int>((*_map)[0].size()) };

            if (_huntingX == -1) _huntingX = 1;
            else _eraseColumn(_huntingX - 2);

            for (int y { 0 }; y < height; ++y) {
                if (y % 2) {
                    Vector2 newPos { Vector2(_huntingX, y) };
                    if (!_isFullNeighbors(newPos)) {
                        _currentCell = newPos;
                        for (int dy { 0 }; dy < height; ++dy) {
                            if (dy % 2 && _huntingX > 1) {
                                Vector2 dPos { Vector2(_huntingX - 2, dy) };
                                (*_map)[dPos.getX()][dPos.getY()] = _getColor(dPos);
                            }
                        }
                        _huntingX = -1;
                        return;
                    }
                }
            }

            for (int y { 0 }; y < height; ++y) {
                if (y % 2) (*_map)[_huntingX][y] = _huntingColor;
            }

            if (_huntingX < width - 2) _huntingX += 2;
            else {
                _hasFinished = true;
                _eraseColumn(_huntingX);
                (*_map)[0][1] = _getColor(Vector2(0, 1));
                (*_map)[width-1][height-2] = _getColor(Vector2(width-1, height-2));
            }
        }
    }
}

bool HuntAndKill::_isFullNeighbors(const Vector2& position) const {
    for (const Vector2& dir: _DIRECTIONS) {
        Vector2 newPos { position + 2*dir };
        if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] == _wallColor) return false;
    }
    return true;
}

void HuntAndKill::_eraseColumn(int x) {
    int height { static_cast<int>((*_map)[0].size()) };

    for (int y { 0 }; y < height; ++y) {
        if (y % 2) {
            Vector2 newPos { Vector2(x, y) };
            (*_map)[newPos.getX()][newPos.getY()] = _getColor(newPos);
        }
    }
}

bool HuntAndKill::_hasNeighbor(const Vector2& position) const {
    for (const Vector2& dir: _DIRECTIONS) {
        Vector2 newPos { position + 2*dir };
        if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] == _getColor(newPos)) return true;
    }
    return false;
}
