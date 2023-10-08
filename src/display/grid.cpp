#include "display/grid.hpp"


Grid::Grid(std::shared_ptr<Generation> generation, std::shared_ptr<Solve> solve, int speed, float cellSize, Vector2 windowSize) :
    _generation(std::move(generation)),
    _solve(std::move(solve)),
    _speed(speed),
    _cellSize(cellSize)
{
    _size = windowSize / _cellSize + Vector2::one();
    const int WIDTH { static_cast<int>(_size.getX()) },
              HEIGHT { static_cast<int>(_size.getY()) };

    _texture.create(WIDTH, HEIGHT);
    for (int i { 0 }; i < WIDTH * HEIGHT * 4; ++i) _pixels.push_back(255);
    _texture.update(_pixels.data());

    _sprite.setTexture(_texture);
    _sprite.setScale(_cellSize, _cellSize);
    _sprite.setPosition(static_cast<int>(-_cellSize / 2), static_cast<int>(-_cellSize / 2));

    _map = std::make_shared<Map>();
    for (int i { 0 }; i < WIDTH; ++i) {
        _map->emplace_back();
        for (int j { 0 }; j < HEIGHT; ++j) {
            (*_map)[i].emplace_back(WALL_COLOR);
        }
    }

    _generation->init(_map, WALL_COLOR);
}

void Grid::updateSimulation() {
    if (_isRunning) {
        if (!_generation->hasFinished()) {
            for (int i { 0 }; i < _speed; ++i) _generation->update();
        }
        else if (_solve != nullptr && !_solve->hasFinished()) {
            if (_solve->hasStarted()) for (int i { 0 }; i < _speed; ++i) _solve->update();
            else {
                _solve->init(_map, WALL_COLOR);
            }
        }
    }

    sf::Uint8* ptr { _pixels.data() };

    for (int j { 0 }; j < static_cast<int>(_size.getY()); ++j) {
        for (int i { 0 }; i < static_cast<int>(_size.getX()); ++i) {
            sf::Color color { (*_map)[i][j] };

            if (color != sf::Color(*ptr, *(ptr+1), *(ptr+2))) {
                *ptr++ = color.r;
                *ptr++ = color.g;
                *ptr++ = color.b;
                ++ptr;
            }
            else {
                ptr += 4;
            }
        }
    }

    _texture.update(_pixels.data());
    _sprite.setTexture(_texture);
}

void Grid::display(sf::RenderWindow& window) {
    window.draw(_sprite);
}

bool Grid::_isInBounds(const Vector2& position) {
    return position.getX() >= 0 && position.getX() < _size.getX() &&
           position.getY() >= 0 && position.getY() < _size.getY();
}

void Grid::generate() {
    _isRunning = true;
}

void Grid::_removeWalls(int count) {
    const int WIDTH { static_cast<int>(_size.getX()) },
            HEIGHT { static_cast<int>(_size.getY()) };

    for (int i { 0 }; i < count; ++i) {
        Vector2 pos;
        do {
            pos = Vector2(rand() % WIDTH, rand() % HEIGHT);
        } while ((*_map)[pos.getX()][pos.getY()] != WALL_COLOR);

        (*_map)[pos.getX()][pos.getY()] = _getColor(pos);
    }
}

sf::Color Grid::_getColor(const Vector2& position) const {
    const int WIDTH { static_cast<int>(_size.getX()) },
            HEIGHT { static_cast<int>(_size.getY()) };

    sf::Color output { sf::Color(255 * position.getY() / HEIGHT, 0, 255 - 255 * position.getX() / WIDTH) };
    if (output == sf::Color(0, 0, 0)) output = sf::Color(1, 1, 1);
    else if (output == sf::Color(255, 255, 255)) output = sf::Color(254, 254, 254);
    return output;
}