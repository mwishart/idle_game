import 'globals.dart' as globals;

class Buildings {
  static void buildingCheck(double tp) {
    for(var x in globals.buildings.keys) {
      if(globals.buildings[x] > 0) {
        switch(x) {
          case 'Town Center':
            townCenter(tp);
            continue;
          case 'Coal Mine':
            coalMine(tp);
            continue;
        }//check to see which building we are on, then run the associated method
      }
    } //iterate through every building type and check to see if at least one exists
  }

  //below, methods for every building type
  static void townCenter(double tp) {
    globals.stockpile["Gold"] += (tp*0.5)*globals.buildings["Town Center"];
  }

  static void coalMine(double tp) {
    globals.stockpile["Coal"] += (tp*2)*globals.buildings["Coal Mine"];
  }
}