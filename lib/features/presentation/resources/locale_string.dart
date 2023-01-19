import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello!',
          'welcome': 'Welcome back',
          'email': 'Email',
          'password': 'Password',
          'forgot': 'Forgot your password?',
          'sign': 'Sign In',
          'google': 'Sign In with Google',
          'not': 'Not a member? ',
          'register': 'Register now',
          'enter': 'Enter a valid email',
          'the': 'The password must contain at least 6 characters',
          'wrong': 'Wrong password. Try again.',
          'unknown': 'Unknown error! Please try again or contact support.',
          'auth_error': 'Authorisation error',
          'would': 'Would you like to try again?',
          'try': 'Try again',
          'or': 'or',
          'many_attempts': 'Too many attempts. Try later',
          'not_found': 'User not found',
          'yes': 'Yes',
          'are_u_sure': 'Are you sure?',
          'want_logout': 'Are you sure you want to logout?',
          'logout': 'Log out',
          'change_name': 'Change name',
          'name': 'Name',
          'name_3_characters': 'Name must contain at least 3 characters',
          'name_uppercase': 'Name must contain at least one uppercase letter',
          'password_6_characters':
              'Password must contain at least 6 characters',
          'password_uppercase':
              'Password must contain at least one uppercase letter',
          'password_lowercase':
              'Password must contain at least one lowercase letter',
          'password_number': 'Password must contain at least one number',
          'password_symbol': 'Password must contain at least symbol _!@#\\\$&*',
          'password_is_same': 'The password is the same as the old one',
          'password_match': 'Passwords do not match. Try again.',
        },
        'ru_RU': {
          'hello': 'Привет!',
          'welcome': 'Добро пожаловать обратно',
          'email': 'Почта',
          'password': 'Пароль',
          'forgot': 'Забыл пороль?',
          'sign': 'Войти',
          'google': 'Войти через Google',
          'not': 'Не зарегистрирован? ',
          'register': 'Регистрация',
          'enter': 'Введите действительный адрес электронной почты',
          'the': 'Пароль должен содержать не менее 6 символов',
          'wrong': 'Неправильный пароль. Попробуйте еще раз.',
          'unknow':
              'Неизвестная ошибка! Повторите попытку или обратитесь в службу поддержки.',
          'auth_error': 'Ошибка авторизации',
          'would': 'Хотите попробовать еще раз?',
          'try': 'Попробуйте еще раз',
          'or': 'или',
          'many_attempts': 'Слишком много попыток. Попробуйте позже',
          'not_found': 'Пользователь не найден',
          'yes': 'Да',
          'are_u_sure': 'Уверены ли вы?',
          'want_logout': 'Вы действительно хотите выйти?',
          'logout': 'Выйти',
          'change_name': 'Изменить имя',
          'name': 'Имя',
          'name_3_characters': 'Имя должно содержать не менее 3 символов',
          'name_uppercase':
              'Имя должно содержать хотя бы одну\nзаглавную букву',
          'password_6_characters':
              'Пароль должен содержать не менее 6 символов',
          'password_uppercase':
              'Пароль должен содержать хотя бы одну заглавную букву',
          'password_lowercase':
              'Пароль должен содержать хотя бы одну строчную букву',
          'password_number': 'Пароль должен содержать хотя бы одну цифру',
          'password_symbol':
              'Пароль должен содержать как минимум символ _!@#\\\$&*',
          'password_is_same': 'Пароль такой же, как старый',
          'password_match': 'Пароли не совпадают. Попробуй еще раз.',
        },
        'by_By': {
          'hello': 'Прывітанне!',
          'welcome': 'Сардэчна запрашаем назад',
          'email': 'Пошта',
          'password': 'Пороль',
          'forgot': 'Забыўся пароль?',
          'sign': 'Увайсці',
          'google': 'Увайдзіце праз Google',
          'not': 'Не зарэгістраваны? ',
          'enter': 'Увядзіце сапраўдны адрас электроннай пошты',
          'register': 'Рэгістрацыя',
          'the': 'Пароль павінен змяшчаць не менш за 6 сімвалаў',
          'wrong':
              'Няправільны адрас электроннай пошты ці пароль.\nПаспрабуй яшчэ.',
          'unknown':
              'Невядомая памылка! Паўтарыце спробу або звярніцеся ў службу падтрымкі.',
          'auth_error': 'Памылка аўтарызацыі',
          'would': 'Хочаце паўтарыць спробу?',
          'try': 'Паспрабуй яшчэ',
          'or': 'або',
          'many_attempts': 'Занадта шмат спроб. Паспрабуйце пазней',
          'not_found': 'Карыстальнік не знойдзены',
          'yes': 'Так',
          'are_u_sure': 'Вы ўпэўнены?',
          'want_logout': 'Вы ўпэўнены, што хочаце выйсці?',
          'logout': 'Выйсці',
          'change_name': 'Змяніць імя',
          'name': 'Імя',
          'name_3_characters': 'Імя павінна змяшчаць мінімум 3 сімвалы',
          'name_uppercase': 'Імя павінна змяшчаць хаця б адну вялікую літару  ',
          'password_6_characters':
              'Пароль павінен змяшчаць не менш за 6 сімвалаў',
          'password_uppercase':
              'Пароль павінен змяшчаць хаця б адну вялікую літару',
          'password_lowercase':
              'Пароль павінен змяшчаць хаця б адну малую літару',
          'password_number': 'Пароль павінен змяшчаць хаця б адну лічбу',
          'password_symbol':
              'Пароль павінен змяшчаць як мінімум сімвал _!@#\\\$&*',
          'password_is_same': 'Пароль той самы, што і стары',
          'password_match': 'Паролі не супадаюць. Паспрабуй яшчэ.',
        }
      };
}
