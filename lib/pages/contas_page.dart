import 'package:expense_tracker/components/conta_Item.dart';
import 'package:expense_tracker/repository/contas_repository.dart';
import 'package:flutter/material.dart';

class ContasPage extends StatefulWidget {
  const ContasPage({super.key});

  @override
  State<ContasPage> createState() => _ContasPageState();
}

class _ContasPageState extends State<ContasPage> {
  final contas = ContasRepository().listarContas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contas'),
      ),
      body: ListView.separated(itemBuilder: ((context, index) {
        final conta = contas[index];
        return ContaItem(conta: conta);
      }), separatorBuilder: ((context, index) {
        return const Divider();
      }), itemCount: contas.length),
    );
  }
}
