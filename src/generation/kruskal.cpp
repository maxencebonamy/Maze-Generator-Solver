#include "generation/kruskal.hpp"


void Kruskal::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    Generation::init(map, wallColor);

    int width { static_cast<int>(_map->size()) },
        height { static_cast<int>((*_map)[0].size()) };

    for (int x { 0 }; x < width; ++x) {
        for (int y { 0 }; y < height; ++y) {
            if (x % 2 && y % 2) {
                sf::Color color;
                do {
                    color = sf::Color(rand() % 256, rand() % 256, rand() % 256);
                } while (color == sf::Color(255, 255, 255) || color == sf::Color(0, 0, 0) ||
                         std::find(_colors.begin(), _colors.end(), color) != _colors.end());
                (*_map)[x][y] = color;
                _colors.emplace_back(color);
            }
        }
    }
}

void Kruskal::update() {
    int width { static_cast<int>(_map->size()) },
        height { static_cast<int>((*_map)[0].size()) };

    if (!_hasFinished) {
        Vector2 firstCell;
        do {
            firstCell = {
                    static_cast<float>(2*(rand() % ((width - 1) / 2)) + 1),
                    static_cast<float>(2*(rand() % ((height - 1) / 2)) + 1)
            };
        } while (_isFullNeighbors(firstCell));

        Vector2 secondCell;

        while (true) {
            Vector2 newPos { firstCell + 2 * _DIRECTIONS[rand() % 4] };
            if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] != (*_map)[firstCell.getX()][firstCell.getY()]){
                secondCell = newPos;
                break;
            }
        }

//        sf::Color color { (*_map)[firstCell.getX()][firstCell.getY()] };
        sf::Color color { _getMainColor(
                (*_map)[firstCell.getX()][firstCell.getY()],
                (*_map)[secondCell.getX()][secondCell.getY()]
        ) };

        Vector2 centerCell { (firstCell + secondCell) / 2 };
        (*_map)[centerCell.getX()][centerCell.getY()] = sf::Color::White;
        _fillColors(firstCell, color);

        _hasFinished = true;
        for (int x { 0 }; x < width; ++x) {
            for (int y { 0 }; y < height; ++y) {
                if (x % 2 && y % 2 && (*_map)[x][y] != color) _hasFinished = false;
            }
        }

        if (_hasFinished) {
            (*_map)[0][1] = (*_map)[1][1];
            (*_map)[width-1][height-2] = (*_map)[width-2][height-2];

            for (int x { 0 }; x < width; ++x) {
                for (int y { 0 }; y < height; ++y) {
                    if ((*_map)[x][y] != _wallColor) {
                        (*_map)[x][y] = _getColor(Vector2(x, y));
                    }
                }
            }
        }
    }
}

bool Kruskal::_isFullNeighbors(const Vector2& position) const {
    for (const Vector2& dir: _DIRECTIONS) {
        Vector2 newPos { position + 2*dir };
        if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] != (*_map)[position.getX()][position.getY()]) return false;
    }
    return true;
}

void Kruskal::_fillColors(const Vector2& position, const sf::Color& color) {
    (*_map)[position.getX()][position.getY()] = color;

    for (const Vector2& dir : _DIRECTIONS) {
        Vector2 newPos { position + dir };
        if (_isInBounds(newPos) && (*_map)[newPos.getX()][newPos.getY()] != _wallColor && (*_map)[newPos.getX()][newPos.getY()] != color) {
            (*_map)[newPos.getX()][newPos.getY()] = color;
            _fillColors(position + 2*dir, color);
        }
    }
}

sf::Color Kruskal::_getMainColor(const sf::Color& first, const sf::Color& second) const {
    int width { static_cast<int>(_map->size()) },
        height { static_cast<int>((*_map)[0].size()) };

    int firstCount { 0 }, secondCount { 0 };

    for (int x { 0 }; x < width; ++x) {
        for (int y { 0 }; y < height; ++y) {
            sf::Color tempColor { (*_map)[x][y] };
            if (tempColor == first) ++firstCount;
            else if (tempColor == second) ++secondCount;
        }
    }

    return firstCount > secondCount ? first : second;
}
