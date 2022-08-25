#pragma once

#include "SFML/Graphics.hpp"
#include "vector/vector2.hpp"
#include <memory>


class Generation {

public:
    typedef std::vector<std::vector<sf::Color>> Map;

    Generation() = default;

    virtual ~Generation() = default;

    virtual void init(std::shared_ptr<Map>& map, const sf::Color& wallColor);

    virtual void update() = 0;

    bool hasFinished() const;

protected:
    bool _isInBounds(const Vector2& position) const;

    sf::Color _getColor(const Vector2& position) const;

    bool _hasFinished {false };

    static const std::array<Vector2, 4> _DIRECTIONS;

    std::shared_ptr<Map> _map;
    sf::Color _wallColor;

    int _width, _height;
};
