import 'package:flutter/material.dart';
import 'package:moc3_20/lists/user.dart';

class ListsScreen extends StatelessWidget {
  const ListsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = List.generate(100, (index) {
      return User(
        firstName: '$index FirstName',
        lastName: 'LastName $index',
      );
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Lists Screen'),
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: List.generate(users.length, (index) {
      //       final user = users[index];
      //       print('Building user: ${user.firstName} ${user.lastName}');
      //       return ListTile(
      //         leading: CircleAvatar(
      //           child: Text(user.firstName[0]),
      //         ),
      //         title: Text('${user.firstName} ${user.lastName}'),
      //         subtitle: Text('User ID: $index'),
      //       );
      //     }),
      //   ),
      // ),
      body: ListView.separated(
        itemCount: users.length + 1,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          if(index == users.length) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final user = users[index];
          print('Building user: ${user.firstName} ${user.lastName}');
          return ListTile(
            leading: CircleAvatar(child: Text(user.firstName[0])),
            title: Text('${user.firstName} ${user.lastName}'),
            subtitle: Text('User ID: $index'),
          );
        },
      ),
    );
  }
}




