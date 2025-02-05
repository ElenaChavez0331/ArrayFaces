/*Elena Chavez
2/5,25
arrays */


int sound;
int total;
String[] albums = { "evermore", "Hit Me Hard and Soft", "reputation", "Pitbull's Greatest Hits", "Guts", "Midnights", "The Secret of Us" };
String albumPlaying;
int hMhAs = 0;
int evermore = 0;
int reputation = 0;
int pGH = 0;
int midnights = 0;
int guts = 0;
int tSoU = 0;
PImage folkloresSister, billie, rep, pitbull, olivia, maroon, gracie;


void setup() {
  size(750, 500);
  noLoop();
  folkloresSister= loadImage("evermore.jpg");
  billie = loadImage("billie.png");
  rep = loadImage("reputation.png");
  pitbull = loadImage("mrWorldWide.png");
  olivia = loadImage("guts.png");
  maroon = loadImage("Midnights.png");
  gracie = loadImage("gracie.png");


  //// Debugging: Check if images loaded
  ////if (f1 == null) println("Error loading 1.png");
  ////if (f2 == null) println("Error loading 2.png");
  ////if (f3 == null) println("Error loading 3.png");
  ////if (f4 == null) println("Error loading 4.png");
  ////if (f5 == null) println("Error loading 5.png");
}

void draw() {
  background(255, 250, 179);
  total = 0;

  // Reset counters
  int localHMHAs = 0;
  int localEvermore = 0;
  int localReputation = 0;
  int localPGH = 0;
  int localMidnights = 0;
  int localGuts = 0;
  int localTSoU = 0;

  // Create dice rolls and accumulate the total
  for (int x = 80; x < 500; x += 160) {
    for (int y = 80; y < 500; y += 160) {
      Die test = new Die(x, y);
      test.roll(); // Show the roll
      test.show(); // Show the drawing
      total += sound; // Add the sound to total

      // Increment counters based on the sound roll
      if (sound <= 5) {
        localHMHAs++; // hit me hard and soft
      }
      if (sound <= 7) {
        localPGH++; // pitbull's greatest hits
      }
      if (sound <= 9) {
        localReputation++; // reputation
      }
      if (sound <= 12) {
        localMidnights++; // midnights
      }
      if (sound <= 15) {
        localGuts++; // guts
      }
      if (sound <= 18) {
        localTSoU++; // the secret of us
      }
      if (sound <= 20) {
        localEvermore++; // evermore
      }
    }
  }

  // Now, assign album based on total
  int albumIndex = (int)(Math.random() * albums.length); // Randomize which album is playing
  albumPlaying = albums[albumIndex];

  // Increment the appropriate album's play count
  if (albumPlaying.equals(albums[0])) {
    evermore += 1;
    //image function
  } else if (albumPlaying.equals(albums[1])) {
    hMhAs += 1;
  } else if (albumPlaying.equals(albums[2])) {
    reputation += 1;
  } else if (albumPlaying.equals(albums[3])) {
    pGH += 1;
  } else if (albumPlaying.equals(albums[4])) {
    guts += 1;
  } else if (albumPlaying.equals(albums[5])) {
    midnights += 1;
  } else if (albumPlaying.equals(albums[6])) {
    tSoU += 1;
  }

  // Display the results
  fill(31, 90, 153);
  textSize(20);
  text("Volume Sum: " + total, 70, 485);
  text("Album Playing: " + albumPlaying, 395, 485);
  text("Amount of times played", 600, 47);
  text("hit me hard and soft: " + hMhAs, 605, 80);
  text("Pitbull's greatest hits: " + pGH, 606, 110);
  text("Reputation: " + reputation, 575, 140);
  text("Midnights: " + midnights, 575, 170);
  text("Guts: " + guts, 550, 200);
  text("The secret of us: " + tSoU, 600, 230);
  text("Evermore: " + evermore, 575, 260);
  PImage img = null;
  
  
  if (albumIndex==0)
  {
    image(folkloresSister, 500, 280, 180, 180);
  }
   if (albumIndex==1)
  {
    image(billie, 500, 280, 180, 180);
  }
    if (albumIndex==2)
  {
    image(rep, 500, 280, 180, 180);
  }
   if (albumIndex==3)
  {
    image(pitbull, 500, 280, 180, 180);
  }
   if (albumIndex==4)
  {
    image(olivia, 500, 280, 180, 180);
  }
  if (albumIndex==5)
  {
    image(maroon, 500, 280, 180, 180);
  }
  if(albumIndex==6)
  {
    image(gracie,500,280,180,180);
  }
}

void mousePressed() {
  redraw();
}

class Die {
  int x;
  int y;

  Die(int xParis, int yLondon) {
    x = xParis;
    y = yLondon;
  }

  void roll() {
    sound = (int)(Math.random() * 20 + 1); // Roll a random number between 1 and 20
  }

  void show() {
    fill(0);
    ellipse(x, y, 120, 120);
    fill(23, 24, 26);
    ellipse(x, y, 110, 110);
    fill(26, 27, 28);
    ellipse(x, y, 100, 100);
    fill(32, 34, 36);
    ellipse(x, y, 90, 90);
    fill(34, 37, 41);
    ellipse(x, y, 80, 80);
    fill(random(50, 250), 116, random(100, 250));
    ellipse(x, y, 60, 60);
    fill(225);
    textSize(13);
    textAlign(CENTER);
    text("volume " + sound, x, y);
    
  }
}
