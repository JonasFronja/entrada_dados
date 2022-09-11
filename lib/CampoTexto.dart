import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body:Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite um valor:"
              ),
              //maxLength: 5,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.green,
            onPressed: (){
              print("valor digitado "+_textEditingController.text);
            },
          )
        ],
      )
    );
  }
}
