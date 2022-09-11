import 'package:flutter/material.dart';

class EntradaRadio extends StatefulWidget {
  @override
  State<EntradaRadio> createState() => _EntradaRadioState();
}

class _EntradaRadioState extends State<EntradaRadio> {
  bool _masculino = false;
  bool _feminino = false;
  String _escolhaUsuario;
  bool _escolhaSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
                title: Text("Masculino"),
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String valor){
                    setState(() {
                      _escolhaUsuario = valor;
                    });
                }
            ),
            RadioListTile(
                title: Text("Feminino"),
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),
            SwitchListTile(
              title: Text("Apenas um teste"),
              value: _escolhaSwitch,
              onChanged: (bool valor){
                setState(() {
                  _escolhaSwitch = valor;
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

          ],
        ),
      ),
    );
  }
}
