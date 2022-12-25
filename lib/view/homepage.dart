import 'package:bloc_example/blocs/userdata_bloc.dart';
import 'package:bloc_example/model/UsetDataModel.dart';
import 'package:bloc_example/repository/repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //put our blocs
      create: (BuildContext context) => UserdataBloc(
        //give the repository class name
        RepositoryProvider.of<Userdata>(context),
      )..add(LoadUserDataEvent()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Bloc Example'),
        ),
        //use blocbuilder when data shows on ui part
        //first is bloc and second is state
        body: BlocBuilder<UserdataBloc, UserdataState>(
          builder: (context, state) {
            if (state is UserdataInitial) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is UserdataSuccess) {
              return customList(state.users);
            }
            if (state is UserdataError) {
              return Center(
                child: Text(state.error),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget customList(List<UserDataModel> users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            margin: const EdgeInsets.all(15),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(users[index].avatar!),
              ),
              title: Text(users[index].firstName!),
              subtitle: Text(users[index].lastName!),
            ),
          ),
        );
      },
    );
  }
}
