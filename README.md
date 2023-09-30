<p align="center">
	<img src="https://github.com/maxencebonamy/maxencebonamy/blob/main/assets/Sand_Box.png" width="100%" alt="Sand Box">
</p>



<br>

<p align="center">
	<img src="https://github.com/maxencebonamy/maxencebonamy/blob/main/assets/1_Description.png" width="100%" alt="Description">
</p>

This software is a mathematical simulation that generates a labyrinth and then solves it using an algorithm of your choice.

### Algorithmes de génération
- **Prim:**
- **Kruskal:**
- **Hunt and Kill:**
- **Depth First:**
- **Aldous-Broder:**

### Algorithmes de résolution
- **Breadth First:**

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
- **--generation** or **-g**: specify generation algorithm ("kuskal", "prim", "hunt-and-kill", "depth-first" or "aldous-brother").
- **--solve** or **-s**: specify resolution algorithm (default "breadth-first" or "none" to avoid resolving the maze).
- **--speed**: specify the speed of the algorithm (default 1).
- **--fps** or **-f**: specify the number of images displayed per second (default 60, 0 for no limit).
- **--fullscreen**: launch software in full screen mode.
- **--cel-size** or **-c**: specify cell size in pixels (default 1).

**Example:** the following command will launch the software in full screen mode, and generate a maze using the "hunt-and-kill" algorithm without solving it, with a speed of 10, 120 images displayed per second and a cell size of 10 pixels.
```
Maze-Generator-Solver.exe -g hunt-and-kill -s none --speed 10 -f 120 --fullscreen -c 10
```
