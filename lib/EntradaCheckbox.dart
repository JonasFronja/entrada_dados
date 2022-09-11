import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              title: Text("Comida brasileira"),
              subtitle: Text("teste"),
              activeColor: Colors.green,
              secondary: Icon(Icons.help),
              value: _comidaBrasileira,
              onChanged: (bool valor){
                setState(() {
                  _comidaBrasileira = valor;
                });
              }
            ),
            CheckboxListTile(
                title: Text("Comida mexicana"),
                subtitle: Text("teste"),
                activeColor: Colors.green,
                secondary: Icon(Icons.help),
                value: _comidaMexicana,
                onChanged: (bool valor){
                  setState(() {
                    _comidaMexicana = valor;
                  });
                }
            ),
           RaisedButton(
             child: Text(
               "Salvar",
               style: TextStyle(
                 fontSize: 20,
               ),
             ),
               onPressed: (){
               
               }
           )
           /* Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool valor){
                setState(() {
                  _estaSelecionado = valor;
                });
              },
            ),*/
          ],
        ),
      ),
    );
  }
}
