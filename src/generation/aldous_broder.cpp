#include "generation/aldous_broder.hpp"

void AldousBroder::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    Generation::init(map, wallColor);

    (*_map)[_currentCell.getY()][_currentCell.getX()] = _propagationColor;
}

void AldousBroder::update() {
    if (!_hasFinished) {
        Vector2 dir;
        do {
            dir = _DIRECTIONS[rand() % 4];
        } while (!_isInBounds(_currentCell + 2*dir));

        Vector2 newPos { _currentCell + 2*dir };
        Vector2 wall { _currentCell + dir };
        if ((*_map)[newPos.getX()][newPos.getY()] == _wallColor) {
            (*_map)[wall.getX()][wall.getY()] = _getColor(wall);

            int width { static_cast<int>(_map->size()) },
                height { static_cast<int>((*_map)[0].size()) };
            if (++_count >= (width - 1) * (height - 1) / 4) {
                _hasFinished = true;
                (*_map)[_currentCell.getX()][_currentCell.getY()] = _getColor(_currentCell);
                (*_map)[newPos.getX()][newPos.getY()] = _getColor(newPos);

                (*_map)[0][1] = _getColor(Vector2(0, 1));
                (*_map)[width-1][height-2] = _getColor(Vector2(width-1, height-2));

                return;
            }
        }
        (*_map)[_currentCell.getX()][_currentCell.getY()] = _getColor(_currentCell);
        (*_map)[newPos.getX()][newPos.getY()] = _propagationColor;

        _currentCell = newPos;
    }
}
