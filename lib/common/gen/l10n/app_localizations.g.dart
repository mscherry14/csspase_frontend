import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.g.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.g.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru')
  ];

  /// No description provided for @balanceCardLabel.
  ///
  /// In ru, this message translates to:
  /// **'Ваш баланс:'**
  String get balanceCardLabel;

  /// No description provided for @balanceCardCount.
  ///
  /// In ru, this message translates to:
  /// **'{count}'**
  String balanceCardCount(int count);

  /// No description provided for @transactionDateTime.
  ///
  /// In ru, this message translates to:
  /// **'{dateTime}'**
  String transactionDateTime(DateTime dateTime);

  /// No description provided for @transactionVariation.
  ///
  /// In ru, this message translates to:
  /// **'{variation}'**
  String transactionVariation(int variation);

  /// No description provided for @transactionHistory.
  ///
  /// In ru, this message translates to:
  /// **'История транзакций'**
  String get transactionHistory;

  /// No description provided for @priceOrderCard.
  ///
  /// In ru, this message translates to:
  /// **'{price} токенов'**
  String priceOrderCard(int price);

  /// No description provided for @orderDateTime.
  ///
  /// In ru, this message translates to:
  /// **'{dateTime}'**
  String orderDateTime(DateTime dateTime);

  /// Order status message on order card
  ///
  /// In ru, this message translates to:
  /// **'{status, select, waiting{ожидает подтверждения} completed{завершен} rejected{отменён} other{неизвестен}}'**
  String orderStatus(String status);

  /// No description provided for @productPrice.
  ///
  /// In ru, this message translates to:
  /// **'{price} T'**
  String productPrice(int price);

  /// No description provided for @buy.
  ///
  /// In ru, this message translates to:
  /// **'купить'**
  String get buy;

  /// No description provided for @purchaseConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'подтверждение покупки'**
  String get purchaseConfirmation;

  /// No description provided for @purchaseConfirmationBody.
  ///
  /// In ru, this message translates to:
  /// **'Вы точно хотите приобрести этот товар?'**
  String get purchaseConfirmationBody;

  /// No description provided for @purchaseSuccess.
  ///
  /// In ru, this message translates to:
  /// **'Покупка совершена успешно!'**
  String get purchaseSuccess;

  /// No description provided for @purchaseSuccessLabel.
  ///
  /// In ru, this message translates to:
  /// **'Информацию по поводу получения вы можете отслеживать во вкладке заказов'**
  String get purchaseSuccessLabel;

  /// No description provided for @close.
  ///
  /// In ru, this message translates to:
  /// **'закрыть'**
  String get close;

  /// No description provided for @purchaseError.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось завершить покупку'**
  String get purchaseError;

  /// No description provided for @purchaseErrorLabel.
  ///
  /// In ru, this message translates to:
  /// **'Повторите попытку позже.\nТекст ошибки: {message}'**
  String purchaseErrorLabel(String message);

  /// No description provided for @unknownError.
  ///
  /// In ru, this message translates to:
  /// **'неизвестная ошибка'**
  String get unknownError;

  /// No description provided for @smthWentWrong.
  ///
  /// In ru, this message translates to:
  /// **'Что-то пошло не так...'**
  String get smthWentWrong;

  /// No description provided for @smthWentWrongLabel.
  ///
  /// In ru, this message translates to:
  /// **'Попробуйте обновить страницу и попробовать позже.'**
  String get smthWentWrongLabel;

  /// No description provided for @wallet.
  ///
  /// In ru, this message translates to:
  /// **'Кошелек'**
  String get wallet;

  /// No description provided for @shop.
  ///
  /// In ru, this message translates to:
  /// **'Магазин'**
  String get shop;

  /// No description provided for @orders.
  ///
  /// In ru, this message translates to:
  /// **'Заказы'**
  String get orders;

  /// No description provided for @events.
  ///
  /// In ru, this message translates to:
  /// **'Мероприятия'**
  String get events;

  /// No description provided for @accrue.
  ///
  /// In ru, this message translates to:
  /// **'начислить'**
  String get accrue;

  /// No description provided for @participantEventAccrual.
  ///
  /// In ru, this message translates to:
  /// **'всего начислено: {accrual}'**
  String participantEventAccrual(int accrual);

  /// No description provided for @eventCapacity.
  ///
  /// In ru, this message translates to:
  /// **'доступно: {capacity}'**
  String eventCapacity(int capacity);

  /// No description provided for @accrualSum.
  ///
  /// In ru, this message translates to:
  /// **'Сумма начисления:'**
  String get accrualSum;

  /// Order status message on order card
  ///
  /// In ru, this message translates to:
  /// **'{message, select, zeroOrLess{сумма начисления не может быть 0} overflow{сумма начисления не может превышать баланс мероприятия} other{данные некорректны}}'**
  String accrualSumError(String message);

  /// No description provided for @accrualConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Начислить токены'**
  String get accrualConfirmation;

  /// No description provided for @accrualSuccess.
  ///
  /// In ru, this message translates to:
  /// **'Начисление выполнено успешно!'**
  String get accrualSuccess;

  /// No description provided for @accrualSuccessLabel.
  ///
  /// In ru, this message translates to:
  /// **'Очень успешно, не забудь убрать эту строчку))0)'**
  String get accrualSuccessLabel;

  /// No description provided for @accrualError.
  ///
  /// In ru, this message translates to:
  /// **'Перевод не прошёл :('**
  String get accrualError;

  /// No description provided for @accrualErrorLabel.
  ///
  /// In ru, this message translates to:
  /// **'Произошла какая-то такая-то ошибка, попробуйте позже.\nТекст ошибки: {message}'**
  String accrualErrorLabel(String message);

  /// No description provided for @accrueDeadline.
  ///
  /// In ru, this message translates to:
  /// **'доступно для начислений до {dateTime}'**
  String accrueDeadline(DateTime dateTime);

  /// No description provided for @participants.
  ///
  /// In ru, this message translates to:
  /// **'Участники'**
  String get participants;

  /// No description provided for @lector.
  ///
  /// In ru, this message translates to:
  /// **'Преподаватель'**
  String get lector;

  /// No description provided for @eventBalance.
  ///
  /// In ru, this message translates to:
  /// **'Баланс мероприятия:'**
  String get eventBalance;

  /// No description provided for @balance.
  ///
  /// In ru, this message translates to:
  /// **'Баланс'**
  String get balance;

  /// Order status message on order card
  ///
  /// In ru, this message translates to:
  /// **'{role, select, user{Пользователь} teacher{Лектор} other{Другое}}'**
  String roleApp(String role);

  /// No description provided for @loadingError.
  ///
  /// In ru, this message translates to:
  /// **'Ошибка: {error}'**
  String loadingError(Object error);

  /// No description provided for @loading.
  ///
  /// In ru, this message translates to:
  /// **'загрузка...'**
  String get loading;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
