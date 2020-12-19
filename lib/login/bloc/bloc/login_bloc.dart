// import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:edubox_pkl/services/api_service.dart';

part 'login_event.dart';
part 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {  
//   @override
//   LoginState get initialState => LoginInitial();

//   @override
//   Stream<LoginState> mapEventToState(
//     LoginEvent event,
//   ) async* {
//     if (event is LoginUser) {
//       yield* _loginUser(event);
//     } else if (event is LoginGoogle) {
//       yield* _loginGoogle();
//     } else if (event is LoginFB) {
//       yield* _loginFb();
//     } else if (event is LoginOTP) {
//       yield* _loginOtp(event);
//     } else if (event is VerityOTP) {
//       yield* _verifyOtp(event);
//     }
//   }

//   Stream<LoginState> _loginUser(LoginUser event) async* {
//     yield LoginLoading();
//     try {
//       final bool result =
//           await ApiService().doLogin(event.username, event.password);

//       if (result)
//         yield LoginSuccess();
//       else
//         yield LoginFailed();
//     } catch (e) {
//       yield LoginFailed();
//     }
//   } 

//   Stream<LoginState> _loginGoogle() async* {
//     yield LoginLoading();
//     try {
//       GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
//       String token = "";

//       GoogleSignInAccount authAcc = await _googleSignIn.signIn();
//       GoogleSignInAuthentication auth = await authAcc.authentication;
//       token = auth.accessToken;

//       print("token $token");
//       if (token != "")
//         yield LoginSuccess();
//       else
//         yield LoginFailed();
//     } catch (e) {
//       print(e);
//       yield LoginFailed();
//     }
//   }

 

//   Stream<LoginState> _loginOtp(LoginOTP event) async* {
//     yield LoginLoading();
//     try {
//       String _verificationId;
//       String _countryCode = '+62';
//       FirebaseAuth _auth = FirebaseAuth.instance;
//       String _phoneNumber = "";

//       final PhoneVerificationCompleted verificationCompleted =
//           (AuthCredential auth) {
//         _auth.signInWithCredential(auth);
//         print('login phone credential $auth');
//       };

//       final PhoneVerificationFailed verificationFailed =
//           (FirebaseAuthException authException) {
//         print('login phone fail ${authException.message}');
//       };

//       final PhoneCodeSent codeSent =
//           (String verificationId, [int forceResendingToken]) async {
//         _verificationId = verificationId;
//       };

//       final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
//           (String verificationId) {
//         _verificationId = verificationId;
//       };

//       if (event.phone[0] == "0") {
//         _phoneNumber =
//             '$_countryCode${event.phone.substring(1, event.phone.length)}';
//       } else if (!event.phone.contains(_countryCode)) {
//         _phoneNumber = '$_countryCode${event.phone}';
//       }
//       print('Phone number ${event.phone}');

//       await _auth.verifyPhoneNumber(
//           phoneNumber: _phoneNumber,
//           timeout: const Duration(minutes: 2),
//           verificationCompleted: verificationCompleted,
//           verificationFailed: verificationFailed,
//           codeSent: codeSent,
//           codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);

//       await Future.delayed(Duration(milliseconds: 1000));
//       yield OTPResult(_verificationId);
//     } catch (e) {
//       yield LoginFailed();
//     }
//   }

//   Stream<LoginState> _verifyOtp(VerityOTP event) async* {
//     yield LoginLoading();
//     try {
//       FirebaseAuth _auth = FirebaseAuth.instance;
//       final AuthCredential credential = PhoneAuthProvider.getCredential(
//           verificationId: event.verId, smsCode: event.smsCode);

//       // final AuthResult user = (await _auth.signInWithCredential(credential));
//       // final FirebaseUser currentUser = await _auth.currentUser();

//       print("${event.verId} : ${event.smsCode} , $currentUser");
//       if (currentUser != null)
//         yield LoginSuccess();
//       else
//         yield LoginFailed();
//     } catch (e) {
//       print(e);
//     }
//   }
// }
