import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Aplicaçao do Braszil'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: _reset, child: Text('Reseteo')),
                TextButton(onPressed: _agregar, child: Text('+')),
                TextButton(onPressed: _sustraer, child: Text('-'))
              ],
            )
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(children: <Widget>[
          FloatingActionButton(
              child: Icon(Icons.access_alarms), onPressed: _set50),
          FloatingActionButton(
              child: Icon(Icons.access_alarms), onPressed: _set100)
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(width: 30),
            FloatingActionButton(
                child: Icon(Icons.exposure_zero), onPressed: _reset),
            Expanded(child: SizedBox()),
            FloatingActionButton(
                child: Icon(Icons.remove), onPressed: _sustraer),
            SizedBox(width: 5.0),
            FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
          ],
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }

  void _set50() {
    setState(() => _conteo = 50);
  }

  void _set100() {
    setState(() => _conteo = 100);
  }
}
