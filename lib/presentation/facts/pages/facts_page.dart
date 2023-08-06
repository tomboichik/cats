import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:cat_test/core/helpers/date_time_helper.dart';
import 'package:cat_test/core/injection/injectable.dart';
import 'package:cat_test/presentation/facts/bloc/facts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FactsPage extends StatefulWidget {
  const FactsPage({Key? key}) : super(key: key);

  @override
  State<FactsPage> createState() => _FactsPageState();
}

class _FactsPageState extends State<FactsPage> {
  final _factsBloc = getIt.get<FactsBloc>();

  @override
  void initState() {
    _factsBloc.add(const FactsEvent.getHistory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FactsBloc, FactsState>(
      bloc: _factsBloc,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: state.maybeWhen(
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (facts) => ListView.builder(
              itemCount: facts.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => ListTile(
                contentPadding: const EdgeInsets.all(15),
                leading: facts[index].image is Uint8List
                    ? Image.memory(
                        facts[index].image as Uint8List,
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : null,
                title: Text(facts[index].createdAt?.toLocal().toPretty() ?? ''),
              ),
            ),
          ),
        );
      },
    );
  }
}
