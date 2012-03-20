//  Title: Cellular Automata Template
//  Description: A slightly modified template for cellular automata, based off of Matt Pearson's automata at zenbullets.com
//  Date Started: 2012 Mar 19
//  Last Modified: 2012 Mar 20
//  [Your website, portfolio, or other links]
//  [Feel free to change the license too!]
//  This work is licensed under a Creative Commons 3.0 License.
//  (Attribution - NonCommerical - ShareAlike)
//  http://creativecommons.org/licenses/by-nc-sa/3.0/
//
//  In summary, you are free to copy, distribute, edit, and remix the work.
//  Under the conditions that you attribute the work to me, it is for
//  noncommercial purposes, and if you build upon this work or otherwise alter
//  it, you may only distribute the resulting work under this license.
//
//  Of course, the conditions may be waived with permission from the author.

//-----------------Globals
/* These are variables that you want to exist throughout the entire sketch.*/
Cell[][] cellMatrix;
int cellSize = 10;
int numX, numY;

//-----------------Setup
/*The code in setup() will only be run once in your sketch.  Use this space to set things up like
the sketch size, background color, framerate, etc. etc.*/
void setup(){
  size(500,300);
  numX = width/cellSize;
  numY = height/cellSize;
  frameRate(2);
  restart();
}

//-----------------Main Loop
//loop over x and y, calculate the next state for each cell.
void draw(){
  background(0);
  for(int x=0;x<numX;x++){
   for(int y=0;y<numY;y++){
     cellMatrix[x][y].calcNextState();
   }
  }
  
  translate(cellSize/2,cellSize/2);
  
  //draw each cell
  for(int x=0;x<numX;x++){
   for(int y=0;y<numY;y++){
     cellMatrix[x][y].display();
   }
  }
}

//setup the entire cellular automata
void restart(){
  //create the cell matix
  cellMatrix = new Cell[numX][numY];
  //loop over x and y, create a grid of cells
  for(int x=0;x<numX;x++){
    for(int y=0;y<numY;y++){
      Cell newCell = new Cell(x,y);
      cellMatrix[x][y] = newCell;
    }
  }
  //loop over x and y, add each cell's neighbors to its object
  for(int x=0;x<numX;x++){
     for(int y=0;y<numY;y++){
       int above = y-1;
       int below = y+1;
       int left = x-1;
       int right = x+1;
       
       if(above < 0){above = numY - 1;}
       if(below == numY){below = 0;}
       if(left<0){left = numX - 1;}
       if(right>0){right = 0;}
       
       cellMatrix[x][y].addNeighbor(cellMatrix[left][above]);
       cellMatrix[x][y].addNeighbor(cellMatrix[left][y]);
       cellMatrix[x][y].addNeighbor(cellMatrix[left][below]);
       cellMatrix[x][y].addNeighbor(cellMatrix[right][above]);
       cellMatrix[x][y].addNeighbor(cellMatrix[right][y]);
       cellMatrix[x][y].addNeighbor(cellMatrix[right][below]);
       cellMatrix[x][y].addNeighbor(cellMatrix[x][above]);
       cellMatrix[x][y].addNeighbor(cellMatrix[x][below]);
     }
  }
}

//restart the entire sketch with a click.
void mousePressed(){
  restart();
}
       

//-----------------Defined Classes
/*Place any defined classes here.  We'll go over this later*/
class Cell {
  float x,y;
  boolean state,nextState;
  Cell[] neighbors;
  
  Cell(float ex,float why){
    x = ex*cellSize;
    y = why*cellSize;
    if(random(2) > 1){
      nextState = true;
    }
    else {
      nextState = false;
    }
    state = nextState;
    neighbors = new Cell[0];
  }
  
  void addNeighbor(Cell cell){
   neighbors = (Cell[])append(neighbors,cell);
  }
 
 //Vichniac Vote Algorithm
 void calcNextState(){
  int liveCount = 0;
  if(state){
    liveCount++;
  }
  for(int i = 0;i<neighbors.length;i++){
    if(neighbors[i].state == true){
      liveCount++;
    }
  }
  if(liveCount<=4){
    nextState=false;
  }
  else if (liveCount > 4) {
    nextState=true;
  }
  if ((liveCount == 4) || (liveCount == 6)){
    nextState = !nextState;
  }
 }

 void display() {
  state = nextState;
  stroke(0);
  if (state == true){
    fill(0,255,0);
  }
  else {
    fill(0,0,255);
  }
  ellipse(x,y,cellSize,cellSize);
 }
}
  
