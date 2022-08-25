#pragma once

#include "generation/generation.hpp"


class Kruskal : public Generation {

public:
    Kruskal() = default;

    void init(std::shared_ptr<Map>& map, const sf::Color& wallColor) override;

    void update() override;

private:
    bool _isFullNeighbors(const Vector2& position) const;

    void _fillColors(const Vector2& position, const sf::Color& color);

    sf::Color _getMainColor(const sf::Color& first, const sf::Color& second) const;

    std::vector<sf::Color> _colors;
};
