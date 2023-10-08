<p align="center">
	<img src="https://github.com/maxencebonamy/maxencebonamy/blob/main/assets/Maze_Generator_Solver.png" width="100%" alt="Maze Generator Solver">
</p>


https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/737e48ca-167f-486c-b615-aed842bd9899


<br>

<p align="center">
	<img src="https://github.com/maxencebonamy/maxencebonamy/blob/main/assets/1_Description.png" width="100%" alt="Description">
</p>

This software is a mathematical simulation that generates a labyrinth and then solves it using an algorithm of your choice.

### Generation algorithms:

- **Prim:**
https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/3c587c9c-f1ef-437c-a89c-4dfb024f5ddd

- **Kruskal:**
https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/9ddc9dee-e26d-47c1-8a92-3693542ecfe7

- **Hunt and Kill:**
https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/c0bf3ad8-81cc-4605-bdd2-4fe986ff0288

- **Depth First:**
https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/84147269-55fc-43db-9293-204eb7dd9604

- **Aldous-Broder:**
https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/49ba1879-99e5-4498-81ad-85238e0eaac9

### Solve algorithms:

- **Breadth First:**
https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/70233431-9955-42cf-936b-02394a019b03

<br>

<p align="center">
	<img src="https://github.com/maxencebonamy/maxencebonamy/blob/main/assets/2_Get_Started.png" width="100%" alt="Get Started">
</p>

### Launch the software:

1. Click on the <a href="https://github.com/maxencebonamy/Sand-Box/releases" target="_blank">Releases</a> button on the right and select the **latest version**.
2. Download the **.zip** archive and extract the files.
3. Run the **.exe** executable.

### Compile:

> [!NOTE]
> *Prerequisites:*
> - [x] *Git must be installed on your computer. If not, <a href="https://git-scm.com/downloads" target="_blank">click here.</a>*
> - [x] *Xmake must be installed on your computer, if not, <a href="https://xmake.io/#/getting_started?id=installation" target="_blank">click here.</a>*
<br>

1. **Clone** the repository on your computer. To do this, open a terminal in the folder of your choice and run the following command:
```
git clone https://github.com/maxencebonamy/Maze-Generator-Solver
```

2. **Navigate** inside the folder you've just cloned with the following command:
```
cd Maze-Generator-Solver
```

3. **Compile** the project with the following command:
```
xmake
```

4. **Run** the executable with this command:
```
xmake run main --generation kruskal
```
*This is an example, you can change the name of the generation algorithm and add other parameters. This is described in greater detail in the "Features" section.*

<br>

<p align="center">
	<img src="https://github.com/maxencebonamy/maxencebonamy/blob/main/assets/3_Features.png" width="100%" alt="Features">
</p>

### Parameters that can be passed on the command line:
- **--generation** or **-g**: specify generation algorithm ("kruskal", "prim", "hunt-and-kill", "depth-first" or "aldous-broder").
- **--solve** or **-s**: specify resolution algorithm (default "breadth-first" or "none" to avoid resolving the maze).
- **--speed**: specify the speed of the algorithm (default 1).
- **--fps** or **-f**: specify the number of images displayed per second (default 60, 0 for no limit).
- **--fullscreen**: launch software in full screen mode.
- **--cel-size** or **-c**: specify cell size in pixels (default 1).

**Example:** the following command will launch the software in full screen mode, and generate a maze using the "hunt-and-kill" algorithm without solving it, with a speed of 10, 120 images displayed per second and a cell size of 10 pixels.
```
./Maze-Generator-Solver.exe -g hunt-and-kill -s none --speed 10 -f 120 --fullscreen -c 10
```

https://github.com/maxencebonamy/Maze-Generator-Solver/assets/66129931/dfa95ba6-cc40-471c-9d0b-7c586b3929ac
