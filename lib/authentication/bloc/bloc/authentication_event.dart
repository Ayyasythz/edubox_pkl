part of 'authentication_bloc.dart';



@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override 
  List<Object> get props =>[];
}

class AppLoad extends AuthenticationEvent{}

// class UserLoggedIn extends AuthenticationEvent{
//   // final User user;

//   UserLoggedIn({@required this.user})
// }
