import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:cat_test/core/helpers/date_time_helper.dart';
import 'package:cat_test/core/injection/injectable.dart';
import 'package:cat_test/core/router/app_router.dart';
import 'package:cat_test/presentation/fact/bloc/fact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FactPage extends StatefulWidget {
  const FactPage({Key? key}) : super(key: key);

  @override
  State<FactPage> createState() => _FactPageState();
}

class _FactPageState extends State<FactPage> {
  final _factBloc = getIt.get<FactBloc>();

  @override
  void initState() {
    _factBloc.add(const FactEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FactBloc, FactState>(
      bloc: _factBloc,
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              onPressed: () {
                context.router.push(const FactsRoute());
              },
              child: const Text(
                'Fact history',
              ),
            )
          ],
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () => _factBloc.add(
            const FactEvent.fetch(),
          ),
          child: const Text('Another fact'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              state.maybeWhen(
                orElse: () => const CircularProgressIndicator(),
                isLoaded: (fact) => Column(
                  children: [
                    Image.memory(
                      fact.image as Uint8List,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        fact.fact,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      fact.createdAt?.toLocal().toPretty() ?? '',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _factBloc.close();
    super.dispose();
  }
}
