// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(count) =>
      "${Intl.plural(count, zero: 'سلة التسوق فارغة', one: 'لديك منتج واحد في سلة التسوق', two: 'لديك منتجان في سلة التسوق', few: 'لديك ${count} منتجات في سلة التسوق', other: 'لديك ${count} منتج في سلة التسوق')}";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'قائمة المفضلة فارغة', one: 'لديك عنصر واحد في قائمة المفضلة', other: 'لديك ${count} عناصر في قائمة المفضلة')}";

  static String m2(code) => "كود الطلب الخاص بك: #${code}";

  static String m3(amount) => "الدفع ${amount} جنيه";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "about_us": MessageLookupByLibrary.simpleMessage("من نحن"),
        "addNewAddress": MessageLookupByLibrary.simpleMessage("أضف عنوان جديد"),
        "address": MessageLookupByLibrary.simpleMessage("العنوان"),
        "all_areas": MessageLookupByLibrary.simpleMessage("كل المناطق"),
        "already_have_account":
            MessageLookupByLibrary.simpleMessage("لديك حساب بالفعل؟"),
        "already_member": MessageLookupByLibrary.simpleMessage("عضو بالفعل؟"),
        "and_our": MessageLookupByLibrary.simpleMessage(" و "),
        "apply_filter": MessageLookupByLibrary.simpleMessage("تطبيق الفلتر"),
        "bagTotal": MessageLookupByLibrary.simpleMessage("إجمالي الحقيبة"),
        "basket": MessageLookupByLibrary.simpleMessage("السله"),
        "by_continue_agree":
            MessageLookupByLibrary.simpleMessage("بمتابعتك، فإنك توافق على"),
        "canceled": MessageLookupByLibrary.simpleMessage("ملغي"),
        "cartItemsCount": m0,
        "cashOnDelivery":
            MessageLookupByLibrary.simpleMessage("الدفع عند الاستلام"),
        "category": MessageLookupByLibrary.simpleMessage("الفئة"),
        "checkout": MessageLookupByLibrary.simpleMessage("الدفع"),
        "city": MessageLookupByLibrary.simpleMessage("المدينة"),
        "close": MessageLookupByLibrary.simpleMessage("إغلاق"),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "continueShopping":
            MessageLookupByLibrary.simpleMessage("متابعة التسوق"),
        "couponCode": MessageLookupByLibrary.simpleMessage("كود الخصم"),
        "creditCard": MessageLookupByLibrary.simpleMessage("بطاقة ائتمان/خصم"),
        "delivered": MessageLookupByLibrary.simpleMessage("تم التوصيل"),
        "delivered_to": MessageLookupByLibrary.simpleMessage("التسليم إلى"),
        "delivering": MessageLookupByLibrary.simpleMessage("قيد التوصيل"),
        "deliveryAddress":
            MessageLookupByLibrary.simpleMessage("عنوان التوصيل"),
        "deliveryTime": MessageLookupByLibrary.simpleMessage("وقت التوصيل"),
        "delivery_arrived": MessageLookupByLibrary.simpleMessage("تم التوصيل"),
        "delivery_charges":
            MessageLookupByLibrary.simpleMessage("رسوم التوصيل :"),
        "donot_have_account":
            MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟"),
        "e_shopping": MessageLookupByLibrary.simpleMessage("تسوق إلكتروني"),
        "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
        "enter_received_otp":
            MessageLookupByLibrary.simpleMessage("أدخل رمز التحقق المستلم"),
        "enter_your_number": MessageLookupByLibrary.simpleMessage("أدخل رقمك"),
        "explore_fruits": MessageLookupByLibrary.simpleMessage(
            "استكشف الفواكه العضوية واحصل عليها"),
        "fast_payment": MessageLookupByLibrary.simpleMessage("دفع سريع"),
        "favoriteItemsCount": m1,
        "favorites": MessageLookupByLibrary.simpleMessage("المفضلة"),
        "filter_by": MessageLookupByLibrary.simpleMessage("تصفية حسب"),
        "finished": MessageLookupByLibrary.simpleMessage("مكتمل"),
        "first_and_last_name":
            MessageLookupByLibrary.simpleMessage("الاسم الأول واسم العائلة"),
        "floor_apartment": MessageLookupByLibrary.simpleMessage("الدور/الشقة"),
        "forget_password":
            MessageLookupByLibrary.simpleMessage("نسيت كلمة المرور؟"),
        "free_delivery": MessageLookupByLibrary.simpleMessage("توصيل مجاني"),
        "full_name": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
        "get_started": MessageLookupByLibrary.simpleMessage("ابدأ"),
        "haveCoupon": MessageLookupByLibrary.simpleMessage("هل لديك كود خصم؟"),
        "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
        "km": MessageLookupByLibrary.simpleMessage("كم"),
        "knet": MessageLookupByLibrary.simpleMessage("كي نت"),
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "login": MessageLookupByLibrary.simpleMessage(" تسجيل الدخول "),
        "login_to_wikala":
            MessageLookupByLibrary.simpleMessage("تسجيل الدخول إلى ويكالا"),
        "message": MessageLookupByLibrary.simpleMessage("رسالة"),
        "mobile_number": MessageLookupByLibrary.simpleMessage("رقم الجوال"),
        "more": MessageLookupByLibrary.simpleMessage("المزيد"),
        "myOrders": MessageLookupByLibrary.simpleMessage("طلباتي"),
        "name": MessageLookupByLibrary.simpleMessage("الاسم"),
        "newOrder": MessageLookupByLibrary.simpleMessage("جديد"),
        "next": MessageLookupByLibrary.simpleMessage("التالي"),
        "not_received": MessageLookupByLibrary.simpleMessage("لم يصلك الرمز؟"),
        "now": MessageLookupByLibrary.simpleMessage("الآن"),
        "offers": MessageLookupByLibrary.simpleMessage("العروض"),
        "open": MessageLookupByLibrary.simpleMessage("فتح"),
        "orderCode": m2,
        "orderConfirmed":
            MessageLookupByLibrary.simpleMessage("تم تأكيد طلبك!"),
        "orderDetails": MessageLookupByLibrary.simpleMessage("تفاصيل الطلب"),
        "order_arrived_place":
            MessageLookupByLibrary.simpleMessage("تم توصيل الطلب إلى مكانك"),
        "orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
        "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
        "payment": MessageLookupByLibrary.simpleMessage("الدفع"),
        "paymentAmount": m3,
        "phone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "phone_number": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "phone_number_whatsapp":
            MessageLookupByLibrary.simpleMessage("رقم الهاتف مع واتساب"),
        "placeOrder": MessageLookupByLibrary.simpleMessage("إتمام الطلب"),
        "please_enter_address":
            MessageLookupByLibrary.simpleMessage("من فضلك أدخل العنوان"),
        "please_enter_city":
            MessageLookupByLibrary.simpleMessage("من فضلك أدخل المدينة"),
        "please_enter_floor_apartment":
            MessageLookupByLibrary.simpleMessage("من فضلك أدخل الدور/الشقة"),
        "please_enter_phone":
            MessageLookupByLibrary.simpleMessage("من فضلك أدخل رقم الهاتف"),
        "please_enter_your_email": MessageLookupByLibrary.simpleMessage(
            "من فضلك أدخل البريد الإلكتروني"),
        "please_enter_your_name":
            MessageLookupByLibrary.simpleMessage("من فضلك أدخل اسمك"),
        "privacy_policy":
            MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
        "products": MessageLookupByLibrary.simpleMessage("المنتجات"),
        "profile": MessageLookupByLibrary.simpleMessage("الحساب"),
        "quick_secure_checkout":
            MessageLookupByLibrary.simpleMessage("عملية دفع سريعة وآمنة"),
        "selectDate": MessageLookupByLibrary.simpleMessage("اختر التاريخ"),
        "selectDeliveryAddress":
            MessageLookupByLibrary.simpleMessage("اختر عنوان التوصيل"),
        "selectDeliveryTime":
            MessageLookupByLibrary.simpleMessage("اختر وقت التوصيل"),
        "send_again": MessageLookupByLibrary.simpleMessage("أعد الإرسال"),
        "shippingCharges": MessageLookupByLibrary.simpleMessage("مصاريف الشحن"),
        "sign_in": MessageLookupByLibrary.simpleMessage("تسجيل دخول"),
        "sign_in_with_facebook": MessageLookupByLibrary.simpleMessage(
            "تسجيل الدخول باستخدام فيسبوك"),
        "sign_in_with_google":
            MessageLookupByLibrary.simpleMessage("تسجيل الدخول باستخدام جوجل"),
        "sign_in_with_phone": MessageLookupByLibrary.simpleMessage(
            "تسجيل الدخول باستخدام رقم الهاتف"),
        "sign_up": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
        "sign_up_to_wikala":
            MessageLookupByLibrary.simpleMessage("إنشاء حساب في ويكالا"),
        "skip": MessageLookupByLibrary.simpleMessage("تخطي"),
        "submit": MessageLookupByLibrary.simpleMessage("إرسال"),
        "subtotal": MessageLookupByLibrary.simpleMessage("الإجمالي الفرعي"),
        "support": MessageLookupByLibrary.simpleMessage("الدعم"),
        "terms_conditions":
            MessageLookupByLibrary.simpleMessage("الشروط والأحكام"),
        "terms_of_service":
            MessageLookupByLibrary.simpleMessage(" شروط الخدمة "),
        "terms_of_service_tapped":
            MessageLookupByLibrary.simpleMessage("تم الضغط على شروط الخدمة!"),
        "thankYou":
            MessageLookupByLibrary.simpleMessage("شكرًا لاختيارك منتجاتنا!"),
        "totalItems": MessageLookupByLibrary.simpleMessage("إجمالي العناصر"),
        "trackOrder": MessageLookupByLibrary.simpleMessage("تتبع الطلب"),
        "welcome": MessageLookupByLibrary.simpleMessage("مرحبًا"),
        "welcome_to_app":
            MessageLookupByLibrary.simpleMessage("مرحبًا بك في تطبيقنا"),
        "working": MessageLookupByLibrary.simpleMessage("جاري التنفيذ")
      };
}
