// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(num count) =>
      "${Intl.plural(count, zero: 'Your cart is empty', one: 'You have 1 item in your shopping cart', other: 'You have ${count} items in your shopping cart')}";

  static String m1(num count) =>
      "${Intl.plural(count, zero: 'Your favorite list is empty', one: 'You have 1 item in your favorite list', other: 'You have ${count} items in your favorite list')}";

  static String m2(dynamic code) => "Your order code: #${code}";

  static String m3(double amount) => "Payment ${amount} EGP";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about_us": MessageLookupByLibrary.simpleMessage("About Us"),
    "addNewAddress": MessageLookupByLibrary.simpleMessage("Add New Address"),
    "address": MessageLookupByLibrary.simpleMessage("Address"),
    "all_areas": MessageLookupByLibrary.simpleMessage("All Areas"),
    "already_have_account": MessageLookupByLibrary.simpleMessage(
      "Already have an account?",
    ),
    "already_member": MessageLookupByLibrary.simpleMessage("Already member?"),
    "and_our": MessageLookupByLibrary.simpleMessage(" and our "),
    "apply_filter": MessageLookupByLibrary.simpleMessage("Apply Filter"),
    "bagTotal": MessageLookupByLibrary.simpleMessage("Bag Total"),
    "basket": MessageLookupByLibrary.simpleMessage("Basket"),
    "by_continue_agree": MessageLookupByLibrary.simpleMessage(
      "By continuing, you agree to our",
    ),
    "canceled": MessageLookupByLibrary.simpleMessage("Canceled"),
    "cartItemsCount": m0,
    "cashOnDelivery": MessageLookupByLibrary.simpleMessage("Cash on Delivery"),
    "category": MessageLookupByLibrary.simpleMessage("Category"),
    "checkout": MessageLookupByLibrary.simpleMessage("Checkout"),
    "city": MessageLookupByLibrary.simpleMessage("City"),
    "close": MessageLookupByLibrary.simpleMessage("Close"),
    "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
    "continueShopping": MessageLookupByLibrary.simpleMessage(
      "Continue Shopping",
    ),
    "couponCode": MessageLookupByLibrary.simpleMessage("Coupon Code"),
    "creditCard": MessageLookupByLibrary.simpleMessage(
      "Credit Card/Debit Card",
    ),
    "delivered": MessageLookupByLibrary.simpleMessage("Delivered"),
    "delivered_to": MessageLookupByLibrary.simpleMessage("Delivered To"),
    "delivering": MessageLookupByLibrary.simpleMessage("Delivering"),
    "deliveryAddress": MessageLookupByLibrary.simpleMessage("Delivery Address"),
    "deliveryTime": MessageLookupByLibrary.simpleMessage("Delivery Time"),
    "delivery_arrived": MessageLookupByLibrary.simpleMessage(
      "Delivery Arrived",
    ),
    "delivery_charges": MessageLookupByLibrary.simpleMessage(
      "Delivery Charges :",
    ),
    "donot_have_account": MessageLookupByLibrary.simpleMessage(
      "Don’t have an account?",
    ),
    "e_shopping": MessageLookupByLibrary.simpleMessage("E Shopping"),
    "email": MessageLookupByLibrary.simpleMessage("Email"),
    "enter_received_otp": MessageLookupByLibrary.simpleMessage(
      "Enter Received OTP",
    ),
    "enter_your_number": MessageLookupByLibrary.simpleMessage(
      "Enter your number",
    ),
    "explore_fruits": MessageLookupByLibrary.simpleMessage(
      "Explore organic fruits & grab them",
    ),
    "fast_payment": MessageLookupByLibrary.simpleMessage("Fast Payment"),
    "favoriteItemsCount": m1,
    "favorites": MessageLookupByLibrary.simpleMessage("Favorites"),
    "filter_by": MessageLookupByLibrary.simpleMessage("Filter by"),
    "finished": MessageLookupByLibrary.simpleMessage("Finished"),
    "first_and_last_name": MessageLookupByLibrary.simpleMessage(
      "First and Last Name",
    ),
    "floor_apartment": MessageLookupByLibrary.simpleMessage("Floor/Apartment"),
    "forget_password": MessageLookupByLibrary.simpleMessage("Forget Password?"),
    "free_delivery": MessageLookupByLibrary.simpleMessage("Free Delivery"),
    "full_name": MessageLookupByLibrary.simpleMessage("Full Name"),
    "get_started": MessageLookupByLibrary.simpleMessage("Get Started"),
    "haveCoupon": MessageLookupByLibrary.simpleMessage(
      "Do You Have any Coupon Code?",
    ),
    "home": MessageLookupByLibrary.simpleMessage("Home"),
    "km": MessageLookupByLibrary.simpleMessage("km"),
    "knet": MessageLookupByLibrary.simpleMessage("Knet"),
    "language": MessageLookupByLibrary.simpleMessage("Language"),
    "login": MessageLookupByLibrary.simpleMessage(" Login "),
    "login_to_wikala": MessageLookupByLibrary.simpleMessage("Login to Wikala"),
    "message": MessageLookupByLibrary.simpleMessage("Message"),
    "mobile_number": MessageLookupByLibrary.simpleMessage("Mobile Number"),
    "more": MessageLookupByLibrary.simpleMessage("More"),
    "myOrders": MessageLookupByLibrary.simpleMessage("My Orders"),
    "name": MessageLookupByLibrary.simpleMessage("Name"),
    "newOrder": MessageLookupByLibrary.simpleMessage("New"),
    "next": MessageLookupByLibrary.simpleMessage("Next"),
    "not_received": MessageLookupByLibrary.simpleMessage("Not received?"),
    "now": MessageLookupByLibrary.simpleMessage("Now"),
    "offers": MessageLookupByLibrary.simpleMessage("Offers"),
    "open": MessageLookupByLibrary.simpleMessage("Open"),
    "orderCode": m2,
    "orderConfirmed": MessageLookupByLibrary.simpleMessage(
      "YOUR ORDER IS CONFIRMED!",
    ),
    "orderDetails": MessageLookupByLibrary.simpleMessage("Order Details"),
    "order_arrived_place": MessageLookupByLibrary.simpleMessage(
      "Order has arrived at your place",
    ),
    "orders": MessageLookupByLibrary.simpleMessage("Orders"),
    "password": MessageLookupByLibrary.simpleMessage("Password"),
    "payment": MessageLookupByLibrary.simpleMessage("Payment"),
    "paymentAmount": m3,
    "phone": MessageLookupByLibrary.simpleMessage("Phone"),
    "phone_number": MessageLookupByLibrary.simpleMessage("Phone Number"),
    "phone_number_whatsapp": MessageLookupByLibrary.simpleMessage(
      "Phone Number with Whatsapp",
    ),
    "placeOrder": MessageLookupByLibrary.simpleMessage("Place Order"),
    "please_enter_address": MessageLookupByLibrary.simpleMessage(
      "Please enter address",
    ),
    "please_enter_city": MessageLookupByLibrary.simpleMessage(
      "Please enter city",
    ),
    "please_enter_floor_apartment": MessageLookupByLibrary.simpleMessage(
      "Please enter floor/apartment",
    ),
    "please_enter_phone": MessageLookupByLibrary.simpleMessage(
      "Please enter phone number",
    ),
    "please_enter_your_email": MessageLookupByLibrary.simpleMessage(
      "Please enter your email",
    ),
    "please_enter_your_name": MessageLookupByLibrary.simpleMessage(
      "Please enter your name",
    ),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
    "products": MessageLookupByLibrary.simpleMessage("Products"),
    "profile": MessageLookupByLibrary.simpleMessage("Profile"),
    "quick_secure_checkout": MessageLookupByLibrary.simpleMessage(
      "Quick and secure checkout process",
    ),
    "selectDate": MessageLookupByLibrary.simpleMessage("Select Date"),
    "selectDeliveryAddress": MessageLookupByLibrary.simpleMessage(
      "Select Delivery Address",
    ),
    "selectDeliveryTime": MessageLookupByLibrary.simpleMessage(
      "Select Delivery Time",
    ),
    "send_again": MessageLookupByLibrary.simpleMessage("Send Again"),
    "shippingCharges": MessageLookupByLibrary.simpleMessage("Shipping Charges"),
    "sign_in": MessageLookupByLibrary.simpleMessage("Sign In"),
    "sign_in_with_facebook": MessageLookupByLibrary.simpleMessage(
      "Sign in with Facebook",
    ),
    "sign_in_with_google": MessageLookupByLibrary.simpleMessage(
      "Sign in with Google",
    ),
    "sign_in_with_phone": MessageLookupByLibrary.simpleMessage(
      "Sign in with Phone Number",
    ),
    "sign_up": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "sign_up_to_wikala": MessageLookupByLibrary.simpleMessage(
      "Sign Up to Wikala",
    ),
    "skip": MessageLookupByLibrary.simpleMessage("Skip"),
    "submit": MessageLookupByLibrary.simpleMessage("Submit"),
    "subtotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
    "support": MessageLookupByLibrary.simpleMessage("Support"),
    "terms_conditions": MessageLookupByLibrary.simpleMessage(
      "Terms & Conditions",
    ),
    "terms_of_service": MessageLookupByLibrary.simpleMessage(
      " Terms of Service ",
    ),
    "terms_of_service_tapped": MessageLookupByLibrary.simpleMessage(
      "Terms of Service tapped!",
    ),
    "thankYou": MessageLookupByLibrary.simpleMessage(
      "Thank you for choosing our products!",
    ),
    "totalItems": MessageLookupByLibrary.simpleMessage("Total Items"),
    "trackOrder": MessageLookupByLibrary.simpleMessage("Track Order"),
    "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
    "welcome_to_app": MessageLookupByLibrary.simpleMessage(
      "Welcome to Our App",
    ),
    "working": MessageLookupByLibrary.simpleMessage("Working"),
  };
}
