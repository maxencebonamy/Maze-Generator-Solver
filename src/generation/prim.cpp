#include "generation/prim.hpp"


void Prim::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    Generation::init(map, wallColor);

    (*_map)[1][1] = _getColor(Vector2::one());

    for (const Vector2& dir : _DIRECTIONS) {
        Vector2 newPos { Vector2::one() + 2*dir };
        if (_isInBounds(newPos)) {
            (*_map)[newPos.getX()][newPos.getY()] = _frontierColor;
            _frontier.emplace_back(newPos);
        }
    }
}

void Prim::update() {
    if (!_hasFinished) {
        Vector2 newPos { _frontier[rand() % _frontier.size()] };
        Vector2 pos { _getRandomNeighbor(newPos) };
        Vector2 wall { (newPos + pos) / 2 };

        (*_map)[wall.getX()][wall.getY()] = _getColor(wall);
        (*_map)[newPos.getX()][newPos.getY()] = _getColor(newPos);

        _frontier.erase(
                std::remove(_frontier.begin(), _frontier.end(), newPos),
                _frontier.end()
        );

        for (const Vector2& dir : _DIRECTIONS) {
            Vector2 newFrontier { newPos + 2*dir };
            if (_isInBounds(newFrontier) && (*_map)[newFrontier.getX()][newFrontier.getY()] == _wallColor) {
                (*_map)[newFrontier.getX()][newFrontier.getY()] = _frontierColor;
                _frontier.emplace_back(newFrontier);
            }
        }

        if (_frontier.empty()) {
            int width { static_cast<int>(_map->size()) },
                height { static_cast<int>((*_map)[0].size()) };

            _hasFinished = true;
            (*_map)[0][1] = _getColor(Vector2(0, 1));
            (*_map)[width-1][height-2] = _getColor(Vector2(width-1, height-2));

            return;
        }
    }
}

Vector2 Prim::_getRandomNeighbor(const Vector2& position) const {
    std::vector<Vector2> neighbors;

    for (const Vector2& dir : _DIRECTIONS) {
        Vector2 pos { position + 2*dir };
        if (_isInBounds(pos) && (*_map)[pos.getX()][pos.getY()] == _getColor(pos)) {
            neighbors.emplace_back(pos);
        }
    }

    return neighbors[rand() % neighbors.size()];
}
