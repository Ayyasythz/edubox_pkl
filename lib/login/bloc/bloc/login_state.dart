part of 'login_bloc.dart';


abstract class LoginState extends Equatable {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override 
  List<Object> get props => [];
}

class LoginLoading extends LoginState{
  @override 
  List<Object> get props => null;
}

class LoginSuccess extends LoginState{
  @override 
  List<Object> get props => null;
}

class LoginFailed extends LoginState{
  @override 
  List<Object> get props => null;
}

class OTPResult extends LoginState{
  final String verId;

  OTPResult(this.verId);

  @override 
  List<Object> get props => null;
}
