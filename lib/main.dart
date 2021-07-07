import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
 Stateless -> widgtes que não podem ser alterados (Constantes)
 Stateful  -> Widgtes que podem ser alterados (Variáveis)
 */

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomeStateful()));
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {
  var _titulo = "Instagram";
  var _texto = "José Ernesto dos Santos Moraes";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _texto = "Curso Flutter";
                  });
                  print("Clicado");
                },
                child: Text("clique aqui")),
            Text("Nome: $_texto"),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteúdo Principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [Text("Texto 1"), Text("Texto 2")],
          ),
        ),
      ),
    );
  }
}
