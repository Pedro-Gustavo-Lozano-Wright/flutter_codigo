import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences extends StatefulWidget {
  @override
  _PreferencesState createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {

  String str_pref ;

  int int_pref;

  @override
  void initState() {
    super.initState();
    get_pref_str();
    get_pref_int();
  }

  get_pref_str() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {str_pref = (prefs.getString("str_pref") ?? "");});
  }

  set_pref_str() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("str_pref", str_pref);
  }

  get_pref_int() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {int_pref = (prefs.getInt("int_pref") ?? 0);});
  }

  set_pref_int() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("int_pref", int_pref);
  }

  int int_numero = 0;
  String str_texto = "";
  List<dynamic> lis_lista = [];
  String str_list = "";
  String str_db = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Persistencia")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(flex: 1,
              child: ListView(
                children: <Widget>[
                  Container(
                    height: 30,
                    width: 300,
                    decoration: BoxDecoration(color: Colors.indigo),
                    alignment: Alignment(0, 0),
                    child: Text(
                      "Preferences",
                      style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(height: 30,),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 130,
                          child: TextField(
                            maxLines: 1,
                            textCapitalization: TextCapitalization.sentences,
                            decoration: InputDecoration(
                              labelText: 'Preferences:',
                              hintText: 'Preferences',
                            ),
                            onSubmitted: (String val){
                              setState(() {
                                str_pref= val;
                                set_pref_str();
                              } );
                            },
                          ),
                        ),
                        Text(str_pref + "  ",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 40,
                          child: FloatingActionButton(
                            heroTag: "add",
                            child: Icon(Icons.remove),
                            onPressed: () {
                              setState(() {
                                int_pref--;
                              });
                              set_pref_int();
                            },
                          ),
                        ),
                        Text(
                          "${int_pref.toString()}",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 40,
                          child: FloatingActionButton(
                            heroTag: "remove",
                            child: Icon(Icons.add),
                            onPressed: () {
                              setState(() {
                                int_pref++;
                              });
                              set_pref_int();
                            },
                          ),
                        )
                      ],
                    ),
                  ),

                  RaisedButton(
                    child: Text("Cerrar esta pantalla"),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
