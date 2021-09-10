import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz_riverpod/src/core/formz/email_formz.dart';
import 'package:formz_riverpod/src/core/formz/password_formz.dart';

import 'login_state.dart';

part 'login_state_notifier.dart';

/// Provider to use the LoginStateNotifier
final loginNotifierProvider = StateNotifierProvider<LoginNotifier, LoginState>(
  (ref) => LoginNotifier(),
);


/// Repositories Providers
/// TODO: Create Repositories Providers

/// Use Cases Providers
/// TODO: Create Use Cases Providers