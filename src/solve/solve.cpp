#include "solve/solve.hpp"

const std::array<Vector2, 4> Solve::_DIRECTIONS {
        Vector2(-1, 0), Vector2(1, 0), Vector2(0, -1), Vector2(0, 1)
};

void Solve::init(std::shared_ptr<Map>& map, const sf::Color& wallColor) {
    _hasStarted = true;
    _map = map;
    _wallColor = wallColor;

    _width = static_cast<int>(_map->size());
    _height = static_cast<int>((*_map)[0].size());

    _startCell = { 0, 1 };
    _finishCell = { static_cast<float>(_width - 1), static_cast<float>(_height - 2) };
}


bool Solve::hasStarted() const {
    return _hasStarted;
}

bool Solve::hasFinished() const {
    return _hasFinished;
}


bool Solve::_isInBounds(const Vector2& position) const {
    return position.getX() >= 0 && position.getX() < _width &&
           position.getY() >= 0 && position.getY() < _height;
}

sf::Color Solve::_getResearchColor(const Vector2& position) const {
    sf::Color output { sf::Color(255, 255 - 255 * position.getY() / _height, 255 * position.getX() / _width) };
    if (output == sf::Color(0, 0, 0)) output = sf::Color(1, 1, 1);
    else if (output == sf::Color(255, 255, 255)) output = sf::Color(254, 254, 254);
    return output;
}

sf::Color Solve::_getColor(const Vector2& position) const {
    sf::Color output { sf::Color(255 * position.getY() / _height, 0, 255 - 255 * position.getX() / _width) };
    if (output == sf::Color(0, 0, 0)) output = sf::Color(1, 1, 1);
    else if (output == sf::Color(255, 255, 255)) output = sf::Color(254, 254, 254);
    return output;
}