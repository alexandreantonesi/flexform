import 'package:flexform/models/selection_data.dart';
import 'package:flutter/material.dart';

class ExercisesScreen extends StatelessWidget {
  final SelectionData userPreferences;

  ExercisesScreen({required this.userPreferences});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plano Semanal de Exercícios'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: const Text('Segunda-feira: Exercícios de Empurrar')),
          ListTile(title: const Text('Terça-feira: Exercícios de Puxar')),
          ListTile(title: const Text('Quarta-feira: Dia de Descanso')),
          ListTile(title: const Text('Quinta-feira: Exercícios de Empurrar')),
          ListTile(title: const Text('Sexta-feira: Exercícios de Puxar')),
          ListTile(title: const Text('Sábado: Exercícios de Pernas')),
          ListTile(title: const Text('Domingo: Dia de Descanso')),
        ],
      ),
    );
  }
}