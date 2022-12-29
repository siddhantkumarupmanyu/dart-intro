class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  Bicycle(this.cadence, this.gear);

/*
  Bicycle(int cadence, int speed, int gear)
      : this.cadence = cadence,
        this.speed = speed,
        this.gear = gear;
*/

  int get speed => _speed;
  
  void applyBrake(int decrement){
    _speed -= decrement;
  }
  
  void speedUp(int increment){
    _speed += increment;
  }

  @override
  String toString() {
    return "Bicycle: $speed mph";
  }
// @override
// String toString() => 'Bicycle: $speed mph';

}

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
}
