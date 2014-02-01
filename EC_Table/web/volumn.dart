import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('volume-nob')
class VolumeNobElement extends PolymerElement {
  // @published means 'this is an attribute', and it is observable.
  @published int volume = 0;
  
  @observable int count =0;
  
  VolumeNobElement.created() : super.created();
  
  void increment(Event e, var detail, Node target) {
    count += 1;
  }
}