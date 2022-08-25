#include "config.hpp"


// The dimensions of the window (in pixels)
const Vector2 WINDOW_SIZE { 1280, 720 };
// The name of the simulation window
const std::string WINDOW_TITLE { "Maze Generator & Solver" };
// The number of images displayed per second
const int WINDOW_FPS { 60 };
// The background color of the window
const sf::Color WINDOW_COLOR { 4, 8, 41 };

const bool WINDOW_FULLSCREEN { false };

const int SPEED { 1 };

// The length of the side of a cell (in pixels)
const float CELL_SIZE { 20 };
// The dimensions of the grid (in pixels)
const Vector2 GRID_SIZE { WINDOW_SIZE / CELL_SIZE + Vector2::one() };


const sf::Color WALL_COLOR { 0, 0, 0 };
const sf::Color PATH_COLOR { 3, 206, 14 };

const std::function<std::unique_ptr<Generation>()> generationFactory {
    [] { return std::make_unique<Kruskal>(); }
};

const std::function<std::unique_ptr<Solve>()> solveFactory {
    [] { return std::make_unique<BreadthFirst>(); }
};