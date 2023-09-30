#pragma once

#include "SFML/Graphics.hpp"
#include <memory>
#include "vector/vector2.hpp"
#include <array>


class Solve {

public:
    typedef std::vector<std::vector<sf::Color>> Map;

    Solve() = default;

    virtual ~Solve() = default;

    virtual void init(std::shared_ptr<Map>& map, const sf::Color& wallColor);

    virtual void update() = 0;

    bool hasStarted() const;
    bool hasFinished() const;

protected:
    bool _isInBounds(const Vector2& position) const;

    sf::Color _getColor(const Vector2& position) const;
    sf::Color _getResearchColor(const Vector2& position) const;

    bool _hasFinished { false };

    bool _hasStarted { false };

    sf::Color _wallColor;

    static const std::array<Vector2, 4> _DIRECTIONS;

    std::shared_ptr<Map> _map;

    int _width, _height;
    Vector2 _startCell, _finishCell;

};
