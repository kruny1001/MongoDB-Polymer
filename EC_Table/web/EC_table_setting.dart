import 'package:polymer/polymer.dart';
import 'dart:html';

InputElement toDoInput;
UListElement toDoList;


/**
 * A Polymer click counter element.
 */
@CustomTag('table-setting')
class ClickCounter extends PolymerElement {
  @published int count = 0;
  String table_name = '';
  
  ClickCounter.created() : super.created() {
    toDoInput = querySelector('#to-do-input');
    toDoList = querySelector('#to-do-list');
    toDoInput.onChange.listen(addToDoItem);
  }
  
  void addToDoItem(Event e) {
    var newToDo = new LIElement();
    newToDo.text = toDoInput.value;
    toDoInput.value = '';
    toDoList.children.add(newToDo);
  }
}
