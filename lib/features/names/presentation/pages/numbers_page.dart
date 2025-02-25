import 'package:demo3/features/names/data/datasources/name_data_source.dart';
import 'package:demo3/features/names/data/repositories/name_repository_impl.dart';
import 'package:demo3/features/names/domain/usecases/get_names_usecase.dart';
import 'package:demo3/features/names/presentation/bloc/names_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  final getIntUseCase = GetIntUsecase(repo: NumberRepositoryImpl(dataSourcee: NumberDataSource()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => NumbersBloc(getIntUseCase),
        child: BlocBuilder<NumbersBloc, NumberState>(
          builder: (context, state) {
             if (state is NumbersLoaded) {
              return ListView.builder(
                  itemCount: state.numbers.length,
                  itemBuilder: (context, index) {
                    final numberss=state.numbers[index];
                    return ListTile(
                      title: Text(numberss.number.toString()),
                    );
                  });
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
