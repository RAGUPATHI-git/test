import 'package:demo3/features/names/presentation/bloc/names_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NamesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Names List"),
      actions: [
        ElevatedButton(onPressed:(){
          Navigator.of(context).pushNamed('/numbers_page');
        }, 
        child: Text(" Go to madhu's page"))
      ],),
      body: BlocBuilder<NamesBloc, NamesState>(
        builder: (context, state) {
          if (state is NamesLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is NamesLoaded) {
            return ListView.builder(
              itemCount: state.names.length,
              itemBuilder: (context, index) {
                final name = state.names[index];
                return ListTile(
                  title: Text(name.name),
                );
              },
            );
          }
          return const  Center(child: Text("Press the button to load names"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<NamesBloc>().add(FetchNamesEvent());
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}


