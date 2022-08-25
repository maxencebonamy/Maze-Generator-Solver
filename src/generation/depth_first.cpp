#include "generation/depth_first.hpp"


void DepthFirst::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    Generation::init(map, wallColor);

    (*_map)[_currentCell.getY()][_currentCell.getX()] = _propagationColor;
}

void DepthFirst::update() {
    if (!_hasFinished) {
        if (!_isFullNeighbors(_currentCell)) {
            Vector2 newPos;
            do {
                newPos = _currentCell + 2 * _DIRECTIONS[rand() % 4];
            } while (!_isInBounds(newPos) || (*_map)[newPos.getX()][newPos.getY()] != _wallColor);

            Vector2 wall { (_currentCell + newPos) / 2 };
            (*_map)[wall.getX()][wall.getY()] = _propagationColor;
            (*_map)[newPos.getX()][newPos.getY()] = _propagationColor;
            _currentCell = newPos;
        }
        else {
            (*_map)[_currentCell.getX()][_currentCell.getY()] = _getColor(_currentCell);
            if (_currentCell == Vector2(1, 1)) {
                int width { static_cast<int>(_map->size()) },
                    height { static_cast<int>((*_map)[0].size()) };

                _hasFinished = true;
                (*_map)[0][1] = _getColor(Vector2(0, 1));
                (*_map)[width-1][height-2] = _getColor(Vector2(width-1, height-2));

                return;
            }
            for (const Vector2& dir: _DIRECTIONS) {
                Vector2 wall { _currentCell + dir };
                Vector2 newPos { _currentCell + 2*dir };

                if (_isInBounds(newPos) && (*_map)[wall.getX()][wall.getY()] == _propagationColor && (*_map)[newPos.getX()][newPos.getY()] == _propagationColor) {
                    (*_map)[wall.getX()][wall.getY()] = _getColor(wall);
                    _currentCell = newPos;
                    break;
                }
            }
        }
    }
}

bool DepthFirst::_isFullNeighbors(const Vector2& position) const {
    for (const Vector2& dir: _DIRECTIONS) {
        Vector2 newPos { position + 2*dir };
        if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] == _wallColor) return false;
    }
    return true;
}