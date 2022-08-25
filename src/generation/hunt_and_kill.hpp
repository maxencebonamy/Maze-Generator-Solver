#pragma once

#include "generation.hpp"


class HuntAndKill : public Generation {

public:
    HuntAndKill() = default;

    void init(std::shared_ptr<Map>& map, const sf::Color& wallColor) override;

    void update() override;

private:
    bool _isFullNeighbors(const Vector2& position) const;

    bool _hasNeighbor(const Vector2& position) const;

    void _eraseColumn(int x);

    Vector2 _currentCell { Vector2::one() };


    sf::Color _huntingColor { 255, 255, 255 };

    int _huntingX { -1 };

};
