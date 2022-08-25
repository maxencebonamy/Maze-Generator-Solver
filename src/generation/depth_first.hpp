#pragma once

#include "generation/generation.hpp"


class DepthFirst : public Generation {

public:
    DepthFirst() = default;

    void init(std::shared_ptr<Map>& map, const sf::Color& wallColor) override;

    void update() override;

private:
    bool _isFullNeighbors(const Vector2& position) const;

    sf::Color _propagationColor { 255, 255, 255 };

    Vector2 _currentCell { 1, 1 };

};
