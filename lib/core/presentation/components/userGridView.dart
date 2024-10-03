import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_project/core/presentation/cubit/user/user_cubit.dart';

class UserGridView extends StatefulWidget {
  const UserGridView({super.key});

  @override
  State<UserGridView> createState() => _UserGridViewState();
}

class _UserGridViewState extends State<UserGridView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UserErrorState) {
              return const Center(
                child: Icon(Icons.close),
              );
            } else if (state is UserLoadedState) {
              final users = state.users;

              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200,
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: users.length, //  usuarios.length,
                itemBuilder: (context, index) {
                  final user = users[index];
                  return Card(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            user.username,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          Text(
                            user.email,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          Text(
                            user.phone,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
