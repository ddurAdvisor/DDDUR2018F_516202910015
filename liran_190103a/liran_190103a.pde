String filename = "trade1.csv";
Table allData;
Table newData;

int backgroundCol = 180;
String renderDay = "2014/9/1";

void setup(){
  size(1000,800);
  smooth();
  background(backgroundCol);
  drawGUI();
  chooseDay();
  mouseClicked();
}

void draw(){
  
}

void getData1(){
  allData = loadTable(filename);
  int money1=0;int money2=0;int money3=0;int money4=0;int money5=0;int money6=0;
  for(int i=1;i<allData.getRowCount();i++){
    TableRow trades = allData.getRow(i);
    int location = trades.getInt(1);
    int day = trades.getInt(2);
    //println(day);
    int money = trades.getInt(3);
    //println(money);
    if(day ==1 &&location == 30){
      money1 = money1 + money;
    }
    if(day ==1 &&location == 34){
      money2 = money2 + money;
    }
    if(day ==1 &&location == 36){
      money3 = money3 + money;
    }
    if(day ==1 &&location == 38){
      money4 = money4 + money;
    }
    if(day ==1 &&location == 33){
      money5 = money5 + money;
    }
    if(day ==1 &&location == 37){
      money6 = money6 + money;
    }
  }
  noStroke();
  fill(164,183,250);
  rect(250,700,80,-money1/20000);
  fill(248,164,250);
  rect(350,700,80,-money2/20000);
  fill(250,164,184);
  rect(450,700,80,-money3/20000);
  fill(164,212,250);
  rect(550,700,80,-money4/20000);
  fill(164,250,239);
  rect(650,700,80,-money5/20000);
  fill(242,250,164);
  rect(750,700,80,-money6/20000);
}

void chooseDay(){
  if(renderDay == "2014/9/1"){
    getData1();
  }
  if(renderDay == "2014/9/2"){
    getData2();
  }
  if(renderDay == "2014/9/3"){
    getData3();
  }
}

void getData2(){
  allData = loadTable(filename);
  int money1=0;int money2=0;int money3=0;int money4=0;int money5=0;int money6=0;
  for(int i=1;i<allData.getRowCount();i++){
    TableRow trades = allData.getRow(i);
    int location = trades.getInt(1);
    int day = trades.getInt(2);
    //println(day);
    int money = trades.getInt(3);
    //println(money);
    if(day ==2 &&location == 30){
      money1 = money1 + money;
    }
    if(day ==2 &&location == 34){
      money2 = money2 + money;
    }
    if(day ==2 &&location == 36){
      money3 = money3 + money;
    }
    if(day ==2 &&location == 38){
      money4 = money4 + money;
    }
    if(day ==2 &&location == 33){
      money5 = money5 + money;
    }
    if(day ==2 &&location == 37){
      money6 = money6 + money;
    }
  }
  noStroke();
  fill(164,183,250);
  rect(250,700,80,-money1/20000);
  fill(248,164,250);
  rect(350,700,80,-money2/20000);
  fill(250,164,184);
  rect(450,700,80,-money3/20000);
  fill(164,212,250);
  rect(550,700,80,-money4/20000);
  fill(164,250,239);
  rect(650,700,80,-money5/20000);
  fill(242,250,164);
  rect(750,700,80,-money6/20000);
}


void getData3(){
  allData = loadTable(filename);
  int money1=0;int money2=0;int money3=0;int money4=0;int money5=0;int money6=0;
  for(int i=1;i<allData.getRowCount();i++){
    TableRow trades = allData.getRow(i);
    int location = trades.getInt(1);
    int day = trades.getInt(2);
    //println(day);
    int money = trades.getInt(3);
    //println(money);
    if(day ==3 &&location == 30){
      money1 = money1 + money;
    }
    if(day ==3 &&location == 34){
      money2 = money2 + money;
    }
    if(day ==3 &&location == 36){
      money3 = money3 + money;
    }
    if(day ==3 &&location == 38){
      money4 = money4 + money;
    }
    if(day ==3 &&location == 33){
      money5 = money5 + money;
    }
    if(day ==3 &&location == 37){
      money6 = money6 + money;
    }
  }
  noStroke();
  fill(164,183,250);
  rect(250,700,80,-money1/20000);
  fill(248,164,250);
  rect(350,700,80,-money2/20000);
  fill(250,164,184);
  rect(450,700,80,-money3/20000);
  fill(164,212,250);
  rect(550,700,80,-money4/20000);
  fill(164,250,239);
  rect(650,700,80,-money5/20000);
  fill(242,250,164);
  rect(750,700,80,-money6/20000);
}


void drawGUI() {
  textAlign(LEFT);
  noStroke();
  fill(245,136,136);
  rect(0,150,80,160);
  fill(136,245,140);
  rect(0,320,80,160);
  fill(136,160,245);
  rect(0,490,80,160);
  fill(0);
  textSize(35);
  text("Income Of The Canteens in "+ renderDay,150,50);
  textSize(14);
  text("click mouse",1,130);
  text("  to change",1,145);
  textSize(40);
  text("9/1",1,245);
  text("9/2",1,415);
  text("9/3",1,585);
  fill(0);
  stroke(10);
  line(200,150,200,700);
  line(200,700,900,700);
  textSize(40);
  text("1",280,740);
  text("2",380,740);
  text("3",480,740);
  text("4",580,740);
  text("5",680,740);
  text("6",780,740);
}
  
void mouseClicked() {
    if(mouseY<310 && mouseY>150 && mouseX<80) {
      renderDay = "2014/9/1";
    } 
    if(mouseY<480 && mouseY>320 && mouseX<80) {
      renderDay = "2014/9/2";
    } 
    if(mouseY<650 && mouseY>490 && mouseX<80) {
      renderDay = "2014/9/3";
    }
    fill(backgroundCol);
    rect(0,0,1000,800);
    drawGUI();
    chooseDay();
}
 
