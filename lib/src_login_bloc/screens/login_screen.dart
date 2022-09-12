import 'package:flutter/material.dart';
import 'package:pics/src_login_bloc/blocs/provider.dart';
import '../blocs/bloc.dart';

// class LoginScreen extends StatelessWidget {
//   // const LoginScreen({Key? key}) : super(key : key);

//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(context) {
//     final bloc = Provider.of(context);

//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           margin: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               emailField(bloc),
//               passwordField(bloc),
//               Container(
//                 margin: const EdgeInsets.only(top: 20),
//               ),
//               submitButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget emailField(Bloc bloc) {
//     return StreamBuilder(
//       stream: bloc.email,
//       builder: (context, snapshot) {
//         return TextField(
//           onChanged: bloc.changeEmail,
//           keyboardType: TextInputType.emailAddress,
//           decoration: InputDecoration(
//             hintText: 'you@example.com',
//             labelText: 'Email Address',
//             errorText: snapshot.hasError ? snapshot.error.toString() : null,
//           ),
//         );
//       },
//     );
//   }

//   Widget passwordField(Bloc bloc) {
//     return StreamBuilder(
//         stream: bloc.password,
//         builder: (context, snapshot) {
//           return TextField(
//             // obscureText: true,
//             onChanged: bloc.changePassword,
//             decoration: InputDecoration(
//               hintText: 'Password',
//               labelText: 'Password',
//               errorText: snapshot.hasError ? snapshot.error.toString() : null,
//             ),
//           );
//         });
//   }

//   Widget submitButton() {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text('Login'),
//       style:
//           ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
//     );
//   }
// }

// final bloc = Bloc();

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    final bloc = Provider.of(context);

    return Container(
      child: Column(
        children: [
          email(bloc),
          password,
          SizedBox(
            height: 40,
          ),
          button,
        ],
      ),
    );
  }

  Widget email(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) => TextField(
        onChanged: bloc.changeEmail,
        decoration: InputDecoration(
          errorText: snapshot.hasError ? snapshot.error.toString() : null,
        ),
      ),
    );
  }

  Widget password = Container();

  Widget button = Container(
    child: Text('dasdsa'),
  );
}
