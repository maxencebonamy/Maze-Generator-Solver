#pragma once

#include "generation.hpp"


class Prim : public Generation {

public:
    Prim() = default;

    void init(std::shared_ptr<Map>& map, const sf::Color& wallColor) override;

    void update() override;
    
private:
    Vector2 _getRandomNeighbor(const Vector2& position) const;

    sf::Color _frontierColor { 255, 255, 255 };

    std::vector<Vector2> _frontier;
    
};
