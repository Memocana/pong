void setup (){
  background(100,100,100);
  size(500,500);
}
boolean upDown = true;
int ballX = 250;
int ballY = 250;
int size = 60;
void draw (){
  background(100,100,100);
  
  
  fill(0,0,0);
  quad(mouseX-30,mouseY+10,mouseX+10,mouseY-30,mouseX+60,mouseY+40,mouseX+40,mouseY+60);
  
  fill(255,0,0);
  ellipse(mouseX-40,mouseY-40,120,120);
  
  fill(255);
  ellipse(ballX, ballY, size, size);
  
  if (upDown){
    size -= 1;
    ballX += random (-4, 5);
    ballY += random (-4, 5);
    if (size <= 20)
      upDown = false;
  } else {
    size += 1;
    ballX += random (-4, 5);
    ballY += random (-4, 5);
    if (size >= 60)
      upDown = true;
  }
  if ((size < 30) && ((ballX > mouseX+80) || (ballX < mouseX - 100) || (mouseY -100 > ballY) || (mouseY + 80 < ballX))){
    exit();
  }
  
}
