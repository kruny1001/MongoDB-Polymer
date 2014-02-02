// this table is for list ads 
// 1. read database 
// 2. populate ads into the table


import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/filter.dart';

@CustomTag('table-generator')
class MyElement extends PolymerElement {
  final Transformer myFilter = new GenerateIterable();

  MyElement.created() : super.created();

}

class GenerateIterable extends Transformer<Iterable, int> {
  int reverse(Iterable i) => i.length;
  Iterable forward(int i) => new Iterable.generate(i, (j) => j + 1);
}