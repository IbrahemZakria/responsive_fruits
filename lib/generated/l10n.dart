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

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `About Us`
  String get about_us {
    return Intl.message(
      'About Us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Terms & Conditions`
  String get terms_conditions {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Category`
  String get category {
    return Intl.message(
      'Category',
      name: 'category',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `Delivered To`
  String get delivered_to {
    return Intl.message(
      'Delivered To',
      name: 'delivered_to',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Charges :`
  String get delivery_charges {
    return Intl.message(
      'Delivery Charges :',
      name: 'delivery_charges',
      desc: '',
      args: [],
    );
  }

  /// `All Areas`
  String get all_areas {
    return Intl.message(
      'All Areas',
      name: 'all_areas',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Free Delivery`
  String get free_delivery {
    return Intl.message(
      'Free Delivery',
      name: 'free_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Apply Filter`
  String get apply_filter {
    return Intl.message(
      'Apply Filter',
      name: 'apply_filter',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Filter by`
  String get filter_by {
    return Intl.message(
      'Filter by',
      name: 'filter_by',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Basket`
  String get basket {
    return Intl.message(
      'Basket',
      name: 'basket',
      desc: '',
      args: [],
    );
  }

  /// `Payment {amount} EGP`
  String paymentAmount(double amount) {
    return Intl.message(
      'Payment $amount EGP',
      name: 'paymentAmount',
      desc: 'Payment message with variable amount',
      args: [amount],
    );
  }

  /// `{count, plural, =0{Your cart is empty} =1{You have 1 item in your shopping cart} other{You have {count} items in your shopping cart}}`
  String cartItemsCount(num count) {
    return Intl.plural(
      count,
      zero: 'Your cart is empty',
      one: 'You have 1 item in your shopping cart',
      other: 'You have $count items in your shopping cart',
      name: 'cartItemsCount',
      desc: '',
      args: [count],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Time`
  String get deliveryTime {
    return Intl.message(
      'Delivery Time',
      name: 'deliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Address`
  String get deliveryAddress {
    return Intl.message(
      'Delivery Address',
      name: 'deliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Now`
  String get now {
    return Intl.message(
      'Now',
      name: 'now',
      desc: '',
      args: [],
    );
  }

  /// `Select Delivery Time`
  String get selectDeliveryTime {
    return Intl.message(
      'Select Delivery Time',
      name: 'selectDeliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get selectDate {
    return Intl.message(
      'Select Date',
      name: 'selectDate',
      desc: '',
      args: [],
    );
  }

  /// `Select Delivery Address`
  String get selectDeliveryAddress {
    return Intl.message(
      'Select Delivery Address',
      name: 'selectDeliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Add New Address`
  String get addNewAddress {
    return Intl.message(
      'Add New Address',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `Coupon Code`
  String get couponCode {
    return Intl.message(
      'Coupon Code',
      name: 'couponCode',
      desc: '',
      args: [],
    );
  }

  /// `Do You Have any Coupon Code?`
  String get haveCoupon {
    return Intl.message(
      'Do You Have any Coupon Code?',
      name: 'haveCoupon',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderDetails {
    return Intl.message(
      'Order Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Total Items`
  String get totalItems {
    return Intl.message(
      'Total Items',
      name: 'totalItems',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Charges`
  String get shippingCharges {
    return Intl.message(
      'Shipping Charges',
      name: 'shippingCharges',
      desc: '',
      args: [],
    );
  }

  /// `Bag Total`
  String get bagTotal {
    return Intl.message(
      'Bag Total',
      name: 'bagTotal',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card/Debit Card`
  String get creditCard {
    return Intl.message(
      'Credit Card/Debit Card',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cashOnDelivery {
    return Intl.message(
      'Cash on Delivery',
      name: 'cashOnDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Knet`
  String get knet {
    return Intl.message(
      'Knet',
      name: 'knet',
      desc: '',
      args: [],
    );
  }

  /// `Place Order`
  String get placeOrder {
    return Intl.message(
      'Place Order',
      name: 'placeOrder',
      desc: '',
      args: [],
    );
  }

  /// `YOUR ORDER IS CONFIRMED!`
  String get orderConfirmed {
    return Intl.message(
      'YOUR ORDER IS CONFIRMED!',
      name: 'orderConfirmed',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for choosing our products!`
  String get thankYou {
    return Intl.message(
      'Thank you for choosing our products!',
      name: 'thankYou',
      desc: '',
      args: [],
    );
  }

  /// `Continue Shopping`
  String get continueShopping {
    return Intl.message(
      'Continue Shopping',
      name: 'continueShopping',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get trackOrder {
    return Intl.message(
      'Track Order',
      name: 'trackOrder',
      desc: '',
      args: [],
    );
  }

  /// `Your order code: #{code}`
  String orderCode(String code) {
    return Intl.message(
      'Your order code: #$code',
      name: 'orderCode',
      desc: 'Order confirmation message with order code',
      args: [code],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get please_enter_your_name {
    return Intl.message(
      'Please enter your name',
      name: 'please_enter_your_name',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get please_enter_your_email {
    return Intl.message(
      'Please enter your email',
      name: 'please_enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Please enter address`
  String get please_enter_address {
    return Intl.message(
      'Please enter address',
      name: 'please_enter_address',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Please enter city`
  String get please_enter_city {
    return Intl.message(
      'Please enter city',
      name: 'please_enter_city',
      desc: '',
      args: [],
    );
  }

  /// `Floor/Apartment`
  String get floor_apartment {
    return Intl.message(
      'Floor/Apartment',
      name: 'floor_apartment',
      desc: '',
      args: [],
    );
  }

  /// `Please enter floor/apartment`
  String get please_enter_floor_apartment {
    return Intl.message(
      'Please enter floor/apartment',
      name: 'please_enter_floor_apartment',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Please enter phone number`
  String get please_enter_phone {
    return Intl.message(
      'Please enter phone number',
      name: 'please_enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `Delivering`
  String get delivering {
    return Intl.message(
      'Delivering',
      name: 'delivering',
      desc: '',
      args: [],
    );
  }

  /// `Finished`
  String get finished {
    return Intl.message(
      'Finished',
      name: 'finished',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Working`
  String get working {
    return Intl.message(
      'Working',
      name: 'working',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newOrder {
    return Intl.message(
      'New',
      name: 'newOrder',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =0{Your favorite list is empty} =1{You have 1 item in your favorite list} other{You have {count} items in your favorite list}}`
  String favoriteItemsCount(int count) {
    return Intl.plural(
      count,
      zero: 'Your favorite list is empty',
      one: 'You have 1 item in your favorite list',
      other: 'You have $count items in your favorite list',
      name: 'favoriteItemsCount',
      desc: 'Message showing number of items in favorites',
      args: [count],
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
