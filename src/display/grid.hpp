#pragma once

#include "config.hpp"

#include <memory>


class Grid {

public:
    typedef std::vector<std::vector<sf::Color>> Map;

    Grid(std::shared_ptr<Generation> generation, std::shared_ptr<Solve> solve, int speed, float cellSize, Vector2 windowSize);

    void updateSimulation();

    void display(sf::RenderWindow& window);

    void generate();

private:
    bool _isInBounds(const Vector2& position);

    void _removeWalls(int count);

    sf::Color _getColor(const Vector2& position) const;

    bool _isRunning { false };

    std::shared_ptr<Generation> _generation;
    std::shared_ptr<Solve> _solve;
    int _speed;
    float _cellSize;
    Vector2 _size = Vector2();

    sf::Texture _texture;
    std::vector<sf::Uint8> _pixels;
    sf::Sprite _sprite;

    std::vector<std::vector<float>> _densityField;

    std::shared_ptr<Map> _map;

};

