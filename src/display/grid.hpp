#pragma once

#include "config.hpp"


class Grid {

public:
    typedef std::vector<std::vector<sf::Color>> Map;

    Grid();

    void updateSimulation();

    void display(sf::RenderWindow& window);

    void generate();

private:
    static bool _isInBounds(const Vector2& position);

    void _removeWalls(int count);

    sf::Color _getColor(const Vector2& position) const;

    bool _isRunning { false };

    sf::Texture _texture;
    std::vector<sf::Uint8> _pixels;
    sf::Sprite _sprite;

    std::vector<std::vector<float>> _densityField;

    std::unique_ptr<Generation> _generation;
    std::unique_ptr<Solve> _solve;

    std::shared_ptr<Map> _map;

};

