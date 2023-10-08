#include "display/grid.hpp"
#include <cxxopts.hpp>


int main(int argc, char* argv[]) {
    cxxopts::Options options("Maze Generator & Solver", "");

    options.add_options()
        ("g,generation", "Select the generation algorithm (prim / kruskal / hunt-and-kill / depth-first / aldous-broder)", cxxopts::value<std::string>()->default_value("kruskal"))
        ("s,solve", "Set the solve algorithm (breadth-first (default) / none for not solving)", cxxopts::value<std::string>()->default_value("breadth-first"))
        ("speed", "Set the speed of the algorithm (1 by default)", cxxopts::value<int>()->default_value("1"))
        ("c,cell-size", "Set the size of a cell (25 by default)", cxxopts::value<int>()->default_value("25"))
        ("f,fps", "Set the number of images displayed par second (60 by default, 0 for unlimited)", cxxopts::value<int>()->default_value("60"))
        ("fullscreen", "Set the window in fullscreen", cxxopts::value<bool>()->implicit_value("true")->default_value("false"));
    options.allow_unrecognised_options();

    auto result = options.parse(argc, argv);
    auto generationName = result["generation"].as<std::string>();
    auto solveName = result["solve"].as<std::string>();
    auto speed = result["speed"].as<int>();
    auto cellSize = result["cell-size"].as<int>();
    auto fps = result["fps"].as<int>();
    bool fullscreen = result["fullscreen"].as<bool>();

    Vector2 windowSize = WINDOW_SIZE;

    if (fullscreen) {
        windowSize.setX(sf::VideoMode::getDesktopMode().width);
        windowSize.setY(sf::VideoMode::getDesktopMode().height);
    }
    sf::VideoMode videoMode = { (unsigned int)windowSize.getX(), (unsigned int)windowSize.getY() };
    auto flags = fullscreen ? sf::Style::Fullscreen : sf::Style::Titlebar | sf::Style::Close;

    sf::RenderWindow window(videoMode, WINDOW_TITLE, flags);
    window.setFramerateLimit(fps);

    sf::Image icon;
    icon.loadFromFile("assets/icon.png");
    window.setIcon(icon.getSize().x, icon.getSize().y, icon.getPixelsPtr());

    std::shared_ptr<Generation> generation;
    if (generationName == "prim") {
        generation = std::make_shared<Prim>();
    }
    else if (generationName == "kruskal") {
        generation = std::make_shared<Kruskal>();
    }
    else if (generationName == "hunt-and-kill") {
        generation = std::make_shared<HuntAndKill>();
    }
    else if (generationName == "depth-first") {
        generation = std::make_shared<DepthFirst>();
    }
    else if (generationName == "aldous-broder") {
        generation = std::make_shared<AldousBroder>();
    }
    else {
        std::cout << "Error: generation algorithm \"" << generationName << "\" does not exist (the available ones are \"prim\", \"kruskal\", \"hunt-and-kill\", \"depth-first\" and \"aldous-broder\")." << std::endl;
        return 1;
    }

    std::shared_ptr<Solve> solve;
    if (solveName == "breadth-first") {
        solve = std::make_shared<BreadthFirst>();
    }
    else if (solveName == "none") {
        solve = nullptr;
    }
    else {
        std::cout << "Error: solve algorithm \"" << solveName << "\" does not exist (the available one is \"breadth-first\")." << std::endl;
        return 1;
    }

    srand(time(NULL));
    Grid grid { generation, solve, speed, static_cast<float>(cellSize), windowSize };

    while (window.isOpen()) {
        sf::Event event {};
        while (window.pollEvent(event)) {
            if (event.type == sf::Event::Closed ||
                (event.type == sf::Event::KeyPressed && sf::Keyboard::isKeyPressed(sf::Keyboard::Escape)))
                window.close();
            else if (event.type == sf::Event::MouseButtonPressed &&
                     sf::Mouse::isButtonPressed(sf::Mouse::Left))
                grid.generate();
        }

        grid.updateSimulation();

        window.clear();
        grid.display(window);
        window.display();
    }

    return EXIT_SUCCESS;
}