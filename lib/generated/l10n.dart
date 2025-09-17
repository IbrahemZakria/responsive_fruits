// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Enter your number`
  String get enter_your_number {
    return Intl.message(
      'Enter your number',
      name: 'enter_your_number',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number {
    return Intl.message(
      'Phone Number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobile_number {
    return Intl.message(
      'Mobile Number',
      name: 'mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up to Wikala`
  String get sign_up_to_wikala {
    return Intl.message(
      'Sign Up to Wikala',
      name: 'sign_up_to_wikala',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// ` Login `
  String get login {
    return Intl.message(
      ' Login ',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `First and Last Name`
  String get first_and_last_name {
    return Intl.message(
      'First and Last Name',
      name: 'first_and_last_name',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number with Whatsapp`
  String get phone_number_whatsapp {
    return Intl.message(
      'Phone Number with Whatsapp',
      name: 'phone_number_whatsapp',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Login to Wikala`
  String get login_to_wikala {
    return Intl.message(
      'Login to Wikala',
      name: 'login_to_wikala',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get donot_have_account {
    return Intl.message(
      'Don’t have an account?',
      name: 'donot_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password?`
  String get forget_password {
    return Intl.message(
      'Forget Password?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Already member?`
  String get already_member {
    return Intl.message(
      'Already member?',
      name: 'already_member',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `By continuing, you agree to our`
  String get by_continue_agree {
    return Intl.message(
      'By continuing, you agree to our',
      name: 'by_continue_agree',
      desc: '',
      args: [],
    );
  }

  /// ` Terms of Service `
  String get terms_of_service {
    return Intl.message(
      ' Terms of Service ',
      name: 'terms_of_service',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service tapped!`
  String get terms_of_service_tapped {
    return Intl.message(
      'Terms of Service tapped!',
      name: 'terms_of_service_tapped',
      desc: '',
      args: [],
    );
  }

  /// ` and our `
  String get and_our {
    return Intl.message(
      ' and our ',
      name: 'and_our',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Phone Number`
  String get sign_in_with_phone {
    return Intl.message(
      'Sign in with Phone Number',
      name: 'sign_in_with_phone',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Facebook`
  String get sign_in_with_facebook {
    return Intl.message(
      'Sign in with Facebook',
      name: 'sign_in_with_facebook',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Our App`
  String get welcome_to_app {
    return Intl.message(
      'Welcome to Our App',
      name: 'welcome_to_app',
      desc: '',
      args: [],
    );
  }

  /// `E Shopping`
  String get e_shopping {
    return Intl.message(
      'E Shopping',
      name: 'e_shopping',
      desc: '',
      args: [],
    );
  }

  /// `Explore organic fruits & grab them`
  String get explore_fruits {
    return Intl.message(
      'Explore organic fruits & grab them',
      name: 'explore_fruits',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Arrived`
  String get delivery_arrived {
    return Intl.message(
      'Delivery Arrived',
      name: 'delivery_arrived',
      desc: '',
      args: [],
    );
  }

  /// `Order has arrived at your place`
  String get order_arrived_place {
    return Intl.message(
      'Order has arrived at your place',
      name: 'order_arrived_place',
      desc: '',
      args: [],
    );
  }

  /// `Fast Payment`
  String get fast_payment {
    return Intl.message(
      'Fast Payment',
      name: 'fast_payment',
      desc: '',
      args: [],
    );
  }

  /// `Quick and secure checkout process`
  String get quick_secure_checkout {
    return Intl.message(
      'Quick and secure checkout process',
      name: 'quick_secure_checkout',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get get_started {
    return Intl.message(
      'Get Started',
      name: 'get_started',
      desc: '',
      args: [],
    );
  }

  /// `Not received?`
  String get not_received {
    return Intl.message(
      'Not received?',
      name: 'not_received',
      desc: '',
      args: [],
    );
  }

  /// `Send Again`
  String get send_again {
    return Intl.message(
      'Send Again',
      name: 'send_again',
      desc: '',
      args: [],
    );
  }

  /// `Enter Received OTP`
  String get enter_received_otp {
    return Intl.message(
      'Enter Received OTP',
      name: 'enter_received_otp',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
