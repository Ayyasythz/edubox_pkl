part of 'login_bloc.dart';


abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginUser extends LoginEvent{
  final String username;
  final String password;

  LoginUser(this.username, this.password);

  @override 
  List<Object> get props => null;
}

class LoginGoogle extends LoginEvent{
  @override 
  List<Object> get props => null;
}

class LoginFB extends LoginEvent{
  @override
  List<Object> get props => null;
}

class LoginOTP extends LoginEvent{
  final String phone;

  LoginOTP(this.phone);

  @override 
  List<Object> get props => null;
}

class VerityOTP extends LoginEvent{
  final String verId;
  final String smsCode;

  VerityOTP(this.verId, this.smsCode);

  @override 
  List<Object> get props => null;
}
