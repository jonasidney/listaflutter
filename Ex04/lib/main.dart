import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Filmes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieListPage(),
    );
  }
}

class MovieListPage extends StatefulWidget {
  @override
  _MovieListPageState createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _movies = [];

  void _addMovie() {
    if (_controller.text.isEmpty) {
      _showAlertDialogEmpty();
    } else {
      setState(() {
        _movies.add(_controller.text);
        _showAlertDialogAdd();
        _controller.clear();
      });
    }
  }

  void _removeMovie(int index) {
    setState(() {
      _movies.removeAt(index);
      _showAlertDialogRem();
    });
  }

  void _showAlertDialogEmpty() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Atenção!"),
          content: Text("Digite o nome de um Filme."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showAlertDialogAdd() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Sucesso!"),
          content: Text("Filme Incluído na Lista."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showAlertDialogRem() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Atenção!"),
          content: Text("Filme Removido da Lista."),
          actions: <Widget>[
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Filmes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'digite o nome do filme',
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _addMovie,
              child: Text('Adicionar'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _movies.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_movies[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => _removeMovie(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
