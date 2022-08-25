#pragma once

#include "generation.hpp"


class AldousBroder : public Generation {

public:
    AldousBroder() = default;

    void init(std::shared_ptr<Map>& map, const sf::Color& wallColor) override;

    void update() override;

private:
    sf::Color _propagationColor { 255, 255, 255 };

    Vector2 _currentCell { 1, 1 };

    int _count { 1 };
};
