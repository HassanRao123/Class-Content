import 'package:alphabetcardsapp/model.dart';

class Alphabrain{

int alphabetnumber=0;
List<Alphabet> alphabetbank=[
  Alphabet('A'),
  Alphabet('B'),
  Alphabet('C'),
  Alphabet('D'),
  Alphabet('E'),
  Alphabet('F'),
  Alphabet('G'),
  Alphabet('H'),
    Alphabet('I'),
  Alphabet('J'),
  Alphabet('K'),
  Alphabet('L'),
  Alphabet('M'),
  Alphabet('N'),
  Alphabet('O'),
  Alphabet('P'),
    Alphabet('Q'),
  Alphabet('R'),
  Alphabet('S'),
  Alphabet('T'),
  Alphabet('U'),
  Alphabet('V'),
  Alphabet('W'),
  Alphabet('X'),
];
  void nextAlphabet() {
    if (alphabetnumber < alphabetbank.length - 1) {
      alphabetnumber++;
    }
  }
    void previousAlphabet() {
    //if (alphabetnumber < alphabetbank.length - 1) {
      alphabetnumber--;
    //}
  }
  String getalphabetText() {
    return alphabetbank[alphabetnumber].alphabetch;
  }

   bool isFinished() {
    if (alphabetnumber >= alphabetbank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

   void reset() {
    alphabetnumber = 0;
  }}