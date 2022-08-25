#include "generation/generation.hpp"


void Generation::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    _map = map;
    _wallColor = wallColor;

    _width = static_cast<int>(_map->size());
    _height = static_cast<int>((*_map)[0].size());
}

bool Generation::_isInBounds(const Vector2& position) const {
    int width { static_cast<int>(_map->size()) },
        height { static_cast<int>((*_map)[0].size()) };

    return position.getX() >= 0 && position.getX() < width &&
           position.getY() >= 0 && position.getY() < height;
}

const std::array<Vector2, 4> Generation::_DIRECTIONS {
        Vector2(-1, 0), Vector2(1, 0), Vector2(0, -1), Vector2(0, 1)
};

bool Generation::hasFinished() const {
    return _hasFinished;
}

sf::Color Generation::_getColor(const Vector2& position) const {
    sf::Color output { sf::Color(255 * position.getY() / _height, 0, 255 - 255 * position.getX() / _width) };
    if (output == sf::Color(0, 0, 0)) output = sf::Color(1, 1, 1);
    else if (output == sf::Color(255, 255, 255)) output = sf::Color(254, 254, 254);
    return output;
}