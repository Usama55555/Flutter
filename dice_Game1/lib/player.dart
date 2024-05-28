class Player{
  int score = 0;

  void addScore(int num){
    score += num;
  }
  int getScore(){
    return score;
  }
  void reset(){
    score = 0;
  }
}