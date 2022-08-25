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
// The number of images displayed per second
extern const int WINDOW_FPS;
// The background color of the window
extern const sf::Color WINDOW_COLOR;

extern const bool WINDOW_FULLSCREEN;

extern const int SPEED;

// The length of the side of a cell (in pixels)
extern const float CELL_SIZE;
// The dimensions of the grid (in pixels)
extern const Vector2 GRID_SIZE;


extern const sf::Color WALL_COLOR;

extern const sf::Color PATH_COLOR;

extern const std::function<std::unique_ptr<Generation>()> generationFactory;
extern const std::function<std::unique_ptr<Solve>()> solveFactory;