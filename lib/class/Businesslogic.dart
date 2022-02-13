// ignore_for_file: non_constant_identifier_names
class binary {
  late String inputInString;
  late int input;
  late String output;

  int getinput() {
    return input;
  }

  void setinput(String _input) {
    inputInString = _input;
  }

  void Converttoint() {
    input = int.parse(inputInString);
  }

  String calculate(String _input) {
    output = "";
    setinput(_input);
    Converttoint();
    for (int i = 0; input > 0; i++) {
      output = output + (input % 2).toString();
      input = (input / 2).floor();
    }
    return output;
  }
}
