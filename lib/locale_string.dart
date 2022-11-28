import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello!',
          'welcom': 'Welocome back',
          'emain': 'Email:',
          'password': 'Password',
          'forgot': 'Forgot your password?',
          'sign': 'Sign In',
          'google': 'Sign In with Google',
          'not': 'Not a member?',
          'register': 'Register now',
          'enter': 'Enter a valid email',
          'the': 'The password must contain at least 6 characters',
          'wrong': 'Wrong email or password. Try again.',
          'urong': 'Unknown error! Please try again or contact support.'
        },
        'ru_RU': {
          'hello': 'Привет!',
          'welcom': 'Добро пожаловать обратно',
          'emain': 'Почта:',
          'password': 'Пороль',
          'forgot': 'Забыл пороль?',
          'sign': 'Войти',
          'google': 'Войти через Google',
          'not': 'Не зарегистрирован?',
          'register': 'Регистрация',
          'the': 'Пароль должен содержать не менее 6 символов',
          'wrong':
              'Неправильный адрес электронной почты или пароль. Попробуйте еще раз.',
          'urong':
              'Неизвестная ошибка! Повторите попытку или обратитесь в службу поддержки.'
        },
        'by_By': {
          'hello': 'Прывітанне!',
          'welcom': 'Сардэчна запрашаем назад',
          'emain': 'Почта:',
          'password': 'Почта',
          'forgot': 'Забыл пороль?',
          'sign': 'Войти',
          'google': 'Увайдзіце праз Google',
          'not': 'Не зарегистрирован?',
          'register': 'Регистрация',
          'the': 'Пароль павінен змяшчаць не менш за 6 сімвалаў',
          'wrong':
              'Няправільны адрас электроннай пошты ці пароль. Паспрабуй яшчэ.',
          'urong':
              'Невядомая памылка! Паўтарыце спробу або звярніцеся ў службу падтрымкі.'
        }
      };
}
