import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dialogos extends StatefulWidget {
  @override
  _DialogosState createState() => _DialogosState();
}

class _DialogosState extends State<Dialogos> {


  String text_find_word = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialogos")),
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
                      "Dialogos",
                      style:
                      TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(height: 30,),
                  RaisedButton(
                    child: Text("wid_show_word"),
                    onPressed: () {
                      wid_show_word("text");
                    },
                  ),
                  RaisedButton(
                    child: Text("showAlertDialog"),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                  ),
                  RaisedButton(
                    child: Text("wid_find_word"),
                    onPressed: () {
                      wid_find_word();
                    },
                  ),
                  wid_edit_tag_preference(5),
                  wid_edit_A_B_C_card(2, context),

                  Container(height: 30,),
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

  void showAlertDialog(BuildContext context) async {
    String result = await showDialog(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Demo'),
          content: Text("Select button you want"),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context, "OK");
              },
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context, "Cancel");
              },
            ),
          ],
        );
      },
    );
  }


  wid_show_word(String stri_show_word){
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(title: Container(height: 270,child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[

              Transform.translate(offset: Offset(87, -10), child: Container(child: Text("gus"),)),
              Container(width: 220, height: 250,
                child: ListView(
                  children: <Widget>[
                    Transform.translate(offset: Offset(0, 15), child: Text(stri_show_word ,style: TextStyle(fontSize: 13),)),
                  ],
                ),
              ),
              Transform.translate(offset: Offset(190, 215), child: Container(color: Colors.white,width: 30, height: 30,
                child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                  padding: EdgeInsets.all(0),
                  child: Icon(Icons.clear, size: 17,color: Colors.red,),
                  onPressed: () {
                    Navigator.pop(context);
                  },),
              ),
              ),
            ],
          ),
        ],
      ),),),
    );
  }



  wid_find_word(){

    text_find_word = "";

    showDialog<String>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(title: Container(height: 70,child: Column(
        children: <Widget>[

          Stack(
            children: <Widget>[

              Transform.translate(offset: Offset(115, 25),child: Container(color: Colors.teal[200], height: 50 ,width: 150, ),),             //der abajo
              Transform.translate(offset: Offset(115, -25),child: Container(color: Colors.teal[200], height: 50 ,width: 150, ),),
              Transform.translate(offset: Offset(-35, 25),child: Container(color: Colors.teal[200], height: 50 ,width: 150, ),), //isq abajo
              Transform.translate(offset: Offset(-35, -25),child: Container(color: Colors.teal[200], height: 50 ,width: 150, ),),


              Transform.translate(offset: Offset(70, -10), child: Container(child: Text("Find word or ID"),)),

              Row(
                children: <Widget>[
                  Container(height: 50, child: Container(width: 200, height: 60,child: TextField(decoration: InputDecoration(hintText: "writes a word or ID", ),style: TextStyle(color: Colors.grey), onSubmitted: (String val) {


                    setState(() {

                    });

                    Navigator.pop(context);

                  },onChanged: (String val) {
                    text_find_word = val;
                  },), padding: EdgeInsets.only(bottom: 10),),),

                  Container(width: 2),
                  Container(width: 30, height: 30,
                    child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                      padding: EdgeInsets.all(0),
                      child: Icon(Icons.check_circle, size: 17,color: Colors.green,),
                      onPressed: () {    }

                    )

                  ),

                ],
              ),
            ],
          ),

        ],
      ),),),
    );
  }

  wid_edit_tag_preference(int numero_tag){

    String text_tag_guardar = "";
    return Container(child: Container(height: 25, width: 30,
      child: OutlineButton(borderSide: BorderSide(color: Colors.transparent), padding: EdgeInsets.all(0),
        child: Container(height: 20, width: 20,child: Transform.translate(offset: Offset(0,-2),child: Icon(Icons.edit, size: 14,color: Colors.grey, ),)),
        onPressed: () {

          text_tag_guardar = "asd";

          showDialog<String>(
            context: context,
            builder: (BuildContext context) => SimpleDialog(title: Container(child: Column(
              children: <Widget>[
                Container(height: 50,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(child: Text("Edit Tag " + numero_tag.toString() + " "),),
                      Container(width: 30, height: 30,
                        child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                          padding: EdgeInsets.all(0),
                          child: Icon(Icons.check_circle, size: 17,color: Colors.green,),
                          onPressed: () {

                            setState(() {

                            });

                            Navigator.pop(context);

                          },),
                      ), Container(width: 30, height: 30,
                        child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                          padding: EdgeInsets.all(0),
                          child: Icon(Icons.clear, size: 17,color: Colors.red,),
                          onPressed: () {

                            Navigator.pop(context);

                          },),
                      ),
                    ],
                  ),
                ),
                Container(height: 50, child: Container(width: 170, height: 60,child: TextField(decoration: InputDecoration(hintText: text_tag_guardar),maxLength: 15, onSubmitted: (String val) {


                  setState(() {

                  });

                  //Navigator.pop(context);

                },onChanged: (String val) {
                  text_tag_guardar = val;
                },), padding: EdgeInsets.only(bottom: 10),),),
              ],
            ),),),
          );

        },
      ),
    ),);
  }


  wid_edit_A_B_C_card(int id_de_lista_a_mostrar_en_pages, BuildContext context){
    List lista_items_card = ["a", "b","v", "A", "r", "e"];
    String new_text_a_card = "";
    String new_text_b_card = "";
    String new_text_c_card = "";

    //int id_unico = int.parse(lista_items_card[0].toString());

    var texcontrol_1 = TextEditingController();
    var texcontrol_2 = TextEditingController();
    var texcontrol_3 = TextEditingController();

    Future.delayed(const Duration(milliseconds: 200), () {
      texcontrol_1.text = lista_items_card[1];
      texcontrol_2.text = lista_items_card[2];
      texcontrol_3.text = lista_items_card[3];
    });


    return Container(child: Container(
      child: OutlineButton(borderSide: BorderSide(color: Colors.transparent), padding: EdgeInsets.all(0),
        child: Container(height: 20, width: 20,child: Icon(Icons.edit, size: 17,color: Colors.grey )),
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => SimpleDialog(title: Container(child: Stack(
              children: <Widget>[

                Transform.translate(offset: Offset(115, 25),child: Container(color: Colors.indigo[200], height: 250 ,width: 150, ),),             //der abajo
                Transform.translate(offset: Offset(115, -25),child: Container(color: Colors.indigo[200], height: 50 ,width: 150, ),),
                Transform.translate(offset: Offset(-35, 25),child: Container(color: Colors.indigo[200], height: 250 ,width: 150, ),), //isq abajo
                Transform.translate(offset: Offset(-35, -25),child: Container(color: Colors.indigo[200], height: 50 ,width: 150, ),),

                Row(
                  children: <Widget>[
                    Expanded(child: Container(),flex: 1,),
                    Transform.translate(offset: Offset(0, -15), child: Container(child: Text("Edit card - ID: 0" ),),),
                    Expanded(child: Container(),flex: 1,),                  ],
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(height: 6,),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(height: 34, width: 60,
                              child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                                padding: EdgeInsets.all(0),
                                child: Column(
                                  children: <Widget>[
                                    Text("Reset at",style: TextStyle(color: Colors.deepPurple[300]),),
                                    Text("level 0",style: TextStyle(color: Colors.deepPurple[300]),),
                                  ],
                                ),
                                onPressed: () {

                                  DateTime now = DateTime.now();

                                  setState(() {

                                    lista_items_card[4] = now.toString();
                                    lista_items_card[5] = "0";
                                    lista_items_card[6] = now.toString();
                                    lista_items_card[7] = "0";

                                    lista_items_card[10] = "0";
                                  });



                                  Navigator.pop(context);




                                },),
                            ),
                            Expanded(child: Container(),flex: 1,),
                            Container(height: 34, width: 60,
                              child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                                padding: EdgeInsets.all(0),
                                child: Column(
                                  children: <Widget>[
                                    Text("Reset at",style: TextStyle(color: Colors.blue),),
                                    Text("no start",style: TextStyle(color: Colors.blue),),
                                  ],
                                ),
                                onPressed: () {


                                  setState(() {

                                    lista_items_card[4] = "No start";
                                    lista_items_card[5] = "0";
                                    lista_items_card[6] = "-";
                                    lista_items_card[7] = "0";

                                    lista_items_card[10] = "11";
                                  });



                                  Navigator.pop(context);




                                },),
                            ),
                            Expanded(child: Container(),flex: 1,),
                            Container(height: 34, width: 60,
                              child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                                padding: EdgeInsets.all(0),
                                child: Column(
                                  children: <Widget>[
                                    Text("Delete",style: TextStyle(color: Colors.red[300]),),
                                    Text("card",style: TextStyle(color: Colors.red[300]),),
                                  ],
                                ),
                                onPressed: () {


                                  setState(() {


                                  });


                                  Navigator.pop(context);




                                },),
                            )
                          ],
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(height: 73, child: Container(width: 300, height: 73,child:
                          TextField(controller: texcontrol_1, maxLines: 2, toolbarOptions: ToolbarOptions(cut: false, paste: true,selectAll: true, copy: true),
                            onChanged: (String val) {
                              new_text_a_card = val;
                            },style: TextStyle(color: Colors.grey[300]),), ),),
                        ],
                      ),
                      Transform.translate(offset: Offset(0, -10), child: Container(height: 73, child: Container(width: 300, height: 73,child:
                      TextField(controller: texcontrol_2,  maxLines: 2, toolbarOptions: ToolbarOptions(cut: false, paste: true,selectAll: true, copy: true),
                        onChanged: (String val) {
                          new_text_b_card = val;
                        },style: TextStyle(color: Colors.grey[300]),),),),),
                      Transform.translate(offset: Offset(0, -20), child: Container(height: 73, child: Container(width: 300, height: 73,child:
                      TextField(controller: texcontrol_3, decoration: InputDecoration(hintText: "Help information", ), maxLines: 2, toolbarOptions: ToolbarOptions(cut: false, paste: true,selectAll: true, copy: true),
                        onChanged: (String val) {
                          new_text_c_card = val;
                        },style: TextStyle(color: Colors.grey[300]),),),),),
                      Container(height: 14,),
                    ],
                  ),
                ),
                Transform.translate(offset: Offset(0, 230), child: Row(
                  children: <Widget>[
                    Container( height: 40,margin: EdgeInsets.only(bottom: 10),
                      child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Text("Discard ", style: TextStyle(color: Colors.grey, ),),
                            Icon(Icons.clear, size: 17,color: Colors.grey,),
                          ],
                        ),
                        onPressed: () {

                          Navigator.pop(context);




                        },),
                    ),
                    Expanded(child: Container(),flex: 1,),

                    Container( height: 40,margin: EdgeInsets.only(bottom: 10),
                      child: OutlineButton(borderSide: BorderSide(color: Colors.transparent),
                        padding: EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Text("Save", style: TextStyle(color: Colors.green, ),),
                            Icon(Icons.check_circle, size: 17,color: Colors.green,),
                          ],
                        ),
                        onPressed: () {

                          int cambios_en_card = 0;

                          if(new_text_a_card == ""){
                            print("no cambio a");
                          }else{
                            cambios_en_card = 1;
                          }
                          if(new_text_b_card == ""){
                            print("no cambio b");
                          }else{
                            cambios_en_card = 1;
                          }
                          if(new_text_c_card == ""){
                            print("no cambio c");
                          }else{
                            cambios_en_card = 1;
                          }











                        },),
                    ),
                  ],
                ),),
                Transform.translate(offset: Offset(165, 88), child:
                Container(width: 25, height: 25, color: Colors.indigo[200]),
                ),
                Transform.translate(offset: Offset(175, 88), child:
                Container(width: 25, height: 25, color: Colors.indigo[200] ,child: FlatButton(child: Icon(Icons.content_copy, size: 18, color: Colors.grey,),
                  onPressed: (){
                    Clipboard.setData(new ClipboardData(text: lista_items_card[1]));
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Text copied, to copy all long press"),duration: Duration(seconds: 2),));
                  },
                  onLongPress: (){
                    Clipboard.setData(new ClipboardData(text: lista_items_card[1] + "  " + lista_items_card[2] + "  " + lista_items_card[3]));
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("All Text copied"),duration: Duration(seconds: 2),));
                  }, padding: EdgeInsets.all(0),)),
                ),
                Transform.translate(offset: Offset(200, 88), child:
                Container(width: 25, height: 25, color: Colors.indigo[200]),
                ),
                Transform.translate(offset: Offset(210, 88), child:
                Container(width: 25, height: 25, color: Colors.indigo[200] ,child: FlatButton(child: Icon(Icons.volume_up, size: 18, color: Colors.grey,), onPressed: (){
                  //set_language();
                  //if(new_text_a_card== ""){speak(lista_items_card[1].toString());}else {speak(new_text_a_card);}//new_text_a_card
                },
                  //onLongPress: (){set_language_low();if(new_text_a_card== ""){speak(lista_items_card[1].toString());}else {speak(new_text_a_card);};},//todokjh

                  padding: EdgeInsets.all(0),)),
                ),
              ],
            ),),),
          );

        },
      ),
    ),);
  }



}
