// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.g.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get balanceCardLabel => 'Ваш баланс:';

  @override
  String balanceCardCount(int count) {
    return '$count';
  }

  @override
  String transactionDateTime(DateTime dateTime) {
    final intl.DateFormat dateTimeDateFormat = intl.DateFormat('d.MM.yyyy HH:mm', localeName);
    final String dateTimeString = dateTimeDateFormat.format(dateTime);

    return '$dateTimeString';
  }

  @override
  String transactionVariation(int variation) {
    return '$variation';
  }

  @override
  String get transactionHistory => 'История транзакций';

  @override
  String priceOrderCard(int price) {
    return '$price токенов';
  }

  @override
  String orderDateTime(DateTime dateTime) {
    final intl.DateFormat dateTimeDateFormat = intl.DateFormat('d.MM.yyyy HH:mm', localeName);
    final String dateTimeString = dateTimeDateFormat.format(dateTime);

    return '$dateTimeString';
  }

  @override
  String orderStatus(String status) {
    String _temp0 = intl.Intl.selectLogic(
      status,
      {
        'waiting': 'ожидает подтверждения',
        'completed': 'завершен',
        'rejected': 'отменён',
        'other': 'неизвестен',
      },
    );
    return '$_temp0';
  }

  @override
  String productPrice(int price) {
    return '$price T';
  }

  @override
  String get buy => 'купить';

  @override
  String get purchaseConfirmation => 'подтверждение покупки';

  @override
  String get purchaseConfirmationBody => 'Вы точно хотите приобрести этот товар?';

  @override
  String get purchaseSuccess => 'Покупка совершена успешно!';

  @override
  String get purchaseSuccessLabel => 'Информацию по поводу получения вы можете отслеживать во вкладке заказов';

  @override
  String get close => 'закрыть';

  @override
  String get purchaseError => 'Не удалось завершить покупку';

  @override
  String purchaseErrorLabel(String message) {
    return 'Повторите попытку позже.\nТекст ошибки: $message';
  }

  @override
  String get unknownError => 'неизвестная ошибка';

  @override
  String get smthWentWrong => 'Что-то пошло не так...';

  @override
  String get smthWentWrongLabel => 'Попробуйте обновить страницу и попробовать позже.';

  @override
  String get wallet => 'Кошелек';

  @override
  String get shop => 'Магазин';

  @override
  String get orders => 'Заказы';

  @override
  String get events => 'Мероприятия';

  @override
  String get accrue => 'начислить';

  @override
  String participantEventAccrual(int accrual) {
    return 'всего начислено: $accrual';
  }

  @override
  String eventCapacity(int capacity) {
    return 'доступно: $capacity';
  }

  @override
  String get accrualSum => 'Сумма начисления:';

  @override
  String accrualSumError(String message) {
    String _temp0 = intl.Intl.selectLogic(
      message,
      {
        'zeroOrLess': 'сумма начисления не может быть 0',
        'overflow': 'сумма начисления не может превышать баланс мероприятия',
        'other': 'данные некорректны',
      },
    );
    return '$_temp0';
  }

  @override
  String get accrualConfirmation => 'Начислить токены';

  @override
  String get accrualSuccess => 'Начисление выполнено успешно!';

  @override
  String get accrualSuccessLabel => 'Очень успешно, не забудь убрать эту строчку))0)';

  @override
  String get accrualError => 'Перевод не прошёл :(';

  @override
  String accrualErrorLabel(String message) {
    return 'Произошла какая-то такая-то ошибка, попробуйте позже.\nТекст ошибки: $message';
  }

  @override
  String accrueDeadline(DateTime dateTime) {
    final intl.DateFormat dateTimeDateFormat = intl.DateFormat('d/MM/yyyy HH:mm', localeName);
    final String dateTimeString = dateTimeDateFormat.format(dateTime);

    return 'доступно для начислений до $dateTimeString';
  }

  @override
  String get participants => 'Участники';

  @override
  String get lector => 'Преподаватель';

  @override
  String get eventBalance => 'Баланс мероприятия:';

  @override
  String get balance => 'Баланс';
}
