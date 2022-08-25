#include "solve/breadth_first.hpp"

void BreadthFirst::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    Solve::init(map, wallColor);

    for (int x { 0 }; x < _width; ++x) {
        _countMap.emplace_back(std::vector<int>(_height, 0));
    }

    _countMap[_startCell.getX()][_startCell.getY()] = 1;
    (*_map)[_startCell.getX()][_startCell.getY()] = _getResearchColor(_startCell);
    _currentCount = 1;
}

void BreadthFirst::update() {
    if (_isCounting) {
        for (int x { 0 }; x < _width; ++x) {
            for (int y { 0 }; y < _height; ++y) {
                Vector2 pos { Vector2(x, y) };

                if (_countMap[pos.getX()][pos.getY()] == _currentCount) {
                    for (const Vector2& dir : _DIRECTIONS) {
                        Vector2 newPos { pos + dir };
                        if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] != _wallColor &&
                            _countMap[newPos.getX()][newPos.getY()] == 0) {

                            _countMap[newPos.getX()][newPos.getY()] = _currentCount + 1;
                            (*_map)[newPos.getX()][newPos.getY()] = _getResearchColor(newPos);

                            if (newPos == _finishCell) {
                                _isCounting = false;
                                _currentCell = _finishCell;
                                (*_map)[_currentCell.getX()][_currentCell.getY()] = _pathColor;
                            }
                        }

                    }
                }

            }
        }

        ++_currentCount;
    }

    else {
        Vector2 pos;
        int count { _currentCount };

        for (const Vector2& dir : _DIRECTIONS) {
            Vector2 newPos { _currentCell + dir };
            if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] != _wallColor && _countMap[newPos.getX()][newPos.getY()] < count) {
                count = _countMap[newPos.getX()][newPos.getY()];
                pos = newPos;
            }
        }

        _currentCell = pos;
        (*_map)[_currentCell.getX()][_currentCell.getY()] = _pathColor;
        _currentCount = count;

        if (_currentCell == _startCell) {
            _hasFinished = true;
            for (int x { 0 }; x < _width; ++x) {
                for (int y { 0 } ; y < _height; ++y) {
                    if ((*_map)[x][y] != _pathColor && (*_map)[x][y] != _wallColor) {
                        (*_map)[x][y] = _getColor(Vector2(x, y));
                    }
                }
            }
        }
    }

}
