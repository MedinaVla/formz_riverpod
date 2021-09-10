import 'package:formz/formz.dart';
import 'package:formz_riverpod/src/core/formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(const EmailFormz.pure()) EmailFormz email,
    @Default(const PasswordFormz.pure()) PasswordFormz password,
    @Default(FormzStatus.pure) FormzStatus status,
  }) = _LoginState;
}
