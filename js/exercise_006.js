// Generated by CoffeeScript 1.6.2
(function() {
  var lucky_number, number_of_rolls, roll;

  print('Please pick a number between 1 to 6: ');

  lucky_number = parseInt(readline());

  number_of_rolls = 0;

  while (true) {
    number_of_rolls += 1;
    roll = Math.floor(Math.random() * 6 + 1);
    if (roll === lucky_number) {
      print("It took " + number_of_rolls + " to get your lucky number " + lucky_number + ".");
      break;
    }
  }

}).call(this);