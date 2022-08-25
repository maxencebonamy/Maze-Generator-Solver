#pragma once

#include "solve.hpp"


class BreadthFirst : public Solve {

public:
    BreadthFirst() = default;

    void init(std::shared_ptr<Map>& map, const sf::Color& wallColor) override;

    void update() override;

private:
    std::vector<std::vector<int>> _countMap;

    int _currentCount;

    bool _isCounting { true };

    Vector2 _currentCell;

    sf::Color _pathColor { 255, 255, 255 };

};
