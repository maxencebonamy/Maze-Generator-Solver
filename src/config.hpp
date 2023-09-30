#pragma once

#include "vector/vector2.hpp"
#include <functional>

#include "generation/kruskal.hpp"
#include "generation/depth_first.hpp"
#include "generation/aldous_broder.hpp"
#include "generation/prim.hpp"
#include "generation/hunt_and_kill.hpp"

#include "solve/breadth_first.hpp"


// The dimensions of the window (in pixels)
extern const Vector2 WINDOW_SIZE;
// The name of the simulation window
extern const std::string WINDOW_TITLE;
// The background color of the window
extern const sf::Color WINDOW_COLOR;

extern const sf::Color WALL_COLOR;

extern const sf::Color PATH_COLOR;
