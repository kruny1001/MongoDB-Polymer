// this table is for list ads 
// 1. read database 
// 2. populate ads into the table


import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/polymer_expressions.dart';
import 'package:template_binding/template_binding.dart';
import '../src/Table/models.dart';
import 'dart:html';

@CustomTag('table-profile')
class MyExample extends PolymerElement {

  @observable Person bob;
  @observable List<Person> Users;
  
  MyExample.created() : super.created() {
    
    // create person class object list 
    Users = new List<Person>();
    Users.add(new Person() 
        ..firstName='Kevin' ..lastName='Son'
        ..signedAgreement=true ..age = 30
        ..favoriteColors.add(new Color() ..name="Blue")
        ..addresses['home']=new Address("1400 s 2nd st. B20000", "Minneapolis")
        ..addresses['work'] = new Address('oak way', 'gotham'));
    
  }
  
  DocumentFragment instanceTemplate(Element template) {
    return templateBind(template).createInstance(this, new PolymerExpressions(globals: {
        'uppercase': (String input) => input.toUpperCase()
      }));
  }
}