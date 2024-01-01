// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:bloc/bloc.dart';
// import 'package:gaming/cache/deo.dart';
//
// import '../../constant/EndPoint.dart';
// import 'AuthStates.dart';
//
// class AuthCubit extends Cubit<AuthState>{
//   AuthCubit():super(InitialStates());
//   static AuthCubit get(context)=>BlocProvider.of(context);
//   void UseAccount({required String? email,required String? password}){
//     DioNetwork.postData(url: Login, data:{
//     'email': email,
//    'password':password,}).then((value){print(value.data) ;
//     emit(SucessLoginStates());
//     }).catchError((error) {
//       print(error);
//       emit(ErrorLoginStates(error));
//     });
//     }
//   void AddAccount({required String? email,required String? name,required String? phone,required String? password}){
//     emit(SignLoadingStates());
//     DioNetwork.postData(url: Register, data: {
//       'email':email,
//       'name':name,
//       'password':password,
//       'phone':phone
//     }).then((value){
//       print(value.data);
//       emit(SucessSignStates());
//     }).catchError((error) {
//       print(error);
//       emit(ErrorSignStates(error));
//     });
//
//   }
//   bool isSecure =false;
//   void changeStatePassword(bool sec){
//     isSecure=sec;
//     emit(passwordStates());
//   }
// }