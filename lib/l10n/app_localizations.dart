import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  static const Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'your_location': 'Your location',
      'near_you': 'Near you',
      'featured_list': 'Featured list',
      'no_parking_nearby': 'No parking nearby',
      'error_no_parking': '[E]No parking nearby',
      'unknown_no_parking': '[U]No parking nearby',
      'see_more': 'See more',
      'parking_list_title': 'Parking list',
      'notifications_title': 'Notification',
      'important_notification': 'Important notice',
      'personal_info_title': 'Personal information',
      'notice_title': 'Notice',
      'ban_warning_one': 'We notify that if you continue not to arrive at the booked parking lot, we will suspend your service to maintain fairness and availability for all users.',
      'ban_warning_two': 'Your service has been suspended for not following the booking schedule at the parking lot. Please contact us for details.',
      'loading': 'Loading...',
      'parking_detail_title': 'Parking details',
      'not_found_parking': 'Parking not found'
    },
    'vi': {
      'your_location': 'Vị trí của bạn',
      'near_you': 'Gần bạn',
      'featured_list': 'Danh sách nổi bật',
      'no_parking_nearby': 'Không có bãi xe gần bạn',
      'error_no_parking': '[E]Không có bãi xe gần bạn',
      'unknown_no_parking': '[U]Không có bãi xe gần bạn',
      'see_more': 'Xem thêm',
      'parking_list_title': 'Danh sách bãi xe',
      'notifications_title': 'Thông báo',
      'important_notification': 'Thông báo quan trọng',
      'personal_info_title': 'Thông tin cá nhân',
      'notice_title': 'Thông báo',
      'ban_warning_one': 'Chúng tôi xin thông báo rằng nếu bạn tiếp tục không đến bãi xe theo lịch đặt, chúng tôi sẽ phải ngưng sử dụng dịch vụ của bạn để duy trì công bằng và đảm bảo tính sẵn sàng cho tất cả người dùng.',
      'ban_warning_two': 'Chúng tôi tiếc báo rằng dịch vụ của bạn đã bị tạm ngưng do không tuân thủ lịch đặt tại bãi xe. Để tiếp tục sử dụng dịch vụ, vui lòng liên hệ với chúng tôi để biết thêm chi tiết và hướng dẫn khắc phục. Chúng tôi rất mong nhận được sự hợp tác của bạn trong việc duy trì trật tự và công bằng cho cộng đồng người dùng của chúng tôi.',
      'loading': 'Đang tải...',
      'parking_detail_title': 'Chi tiết bãi xe',
      'not_found_parking': 'Không tìm thấy bãi xe'
    }
  };

  String _translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ??
        _localizedValues['en']![key] ??
        key;
  }

  String get yourLocation => _translate('your_location');
  String get nearYou => _translate('near_you');
  String get featuredList => _translate('featured_list');
  String get noParkingNearby => _translate('no_parking_nearby');
  String get errorNoParking => _translate('error_no_parking');
  String get unknownNoParking => _translate('unknown_no_parking');
  String get seeMore => _translate('see_more');
  String get parkingListTitle => _translate('parking_list_title');
  String get notificationsTitle => _translate('notifications_title');
  String get importantNotification => _translate('important_notification');
  String get personalInfoTitle => _translate('personal_info_title');
  String get noticeTitle => _translate('notice_title');
  String get banWarningOne => _translate('ban_warning_one');
  String get banWarningTwo => _translate('ban_warning_two');
  String get loading => _translate('loading');
  String get parkingDetailTitle => _translate('parking_detail_title');
  String get notFoundParking => _translate('not_found_parking');
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'vi'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
