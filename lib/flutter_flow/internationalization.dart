import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ja', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? jaText = '',
    String? enText = '',
  }) =>
      [jaText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '6p1owhtm': {
      'ja': '20:32',
      'en': '',
    },
    'nm1hhvee': {
      'ja': 'ホーム',
      'en': '',
    },
    'gplxwveq': {
      'ja': 'ログアウト',
      'en': '',
    },
    '765cespi': {
      'ja': '',
      'en': '',
    },
  },
  // MyPage
  {
    'xy7fn141': {
      'ja': 'Joy Augustin',
      'en': '',
    },
    '6mrofd51': {
      'ja': 'joy@augustin.com',
      'en': '',
    },
    '3lqii1pd': {
      'ja': 'Account',
      'en': '',
    },
    'kvfx0mun': {
      'ja': 'Payment Options',
      'en': '',
    },
    '1ejvsyhr': {
      'ja': 'Country',
      'en': '',
    },
    'szfrlyx6': {
      'ja': 'Notification Settings',
      'en': '',
    },
    'jy7pn7e8': {
      'ja': 'Edit Profile',
      'en': '',
    },
    'bmg1jtkq': {
      'ja': 'General',
      'en': '',
    },
    'l9dm6piz': {
      'ja': 'Support',
      'en': '',
    },
    '50waq2f1': {
      'ja': 'Terms of Service',
      'en': '',
    },
    'efl60jmd': {
      'ja': 'Invite Friends',
      'en': '',
    },
    'omih40cy': {
      'ja': 'マイページ',
      'en': '',
    },
    'qzjhu2ig': {
      'ja': 'Mypage',
      'en': '',
    },
  },
  // recording
  {
    'c9une4w9': {
      'ja': 'Hello World',
      'en': '',
    },
    's499tcx3': {
      'ja': 'start',
      'en': '',
    },
    'm6chre1j': {
      'ja': 'stop',
      'en': '',
    },
    'fxpyzcq0': {
      'ja': 'Page Title',
      'en': '',
    },
    'hn2ggkf8': {
      'ja': 'Home',
      'en': '',
    },
  },
  // splash
  {
    '4u8mohdd': {
      'ja': 'Home',
      'en': '',
    },
  },
  // OnBord1
  {
    '7v6d2u3q': {
      'ja': '声でつながる\n家族のためのポッドキャスト',
      'en': '',
    },
    'rwr6nid5': {
      'ja': 'Lullabeeは親子の会話を記録して家族に共有する\n家族だけのポッドキャストアプリです',
      'en': '',
    },
    'uic4sg4w': {
      'ja': '次へ',
      'en': '',
    },
    '00wrgsy8': {
      'ja': 'Home',
      'en': '',
    },
  },
  // OnBord2
  {
    'nzwzxu0q': {
      'ja': '日常の会話を\nさっと記録しましょう',
      'en': '',
    },
    'klzmliqd': {
      'ja': 'お子さまの可愛い言い間違いや、ふとした会話。大切な家族の日常を、簡単な操作で音声に残せます。',
      'en': '',
    },
    '8d7z0nuy': {
      'ja': '次へ',
      'en': '',
    },
    'bx5a7xr3': {
      'ja': 'Home',
      'en': '',
    },
  },
  // OnBord3
  {
    'lif9ec79': {
      'ja': '離れていても\n声でいつもそばに',
      'en': '',
    },
    'uxkjv2aa': {
      'ja': '録音した会話は、招待した大切な家族だけに届きます。遠くに住んでいても、日々の成長や温かい気持ちを共有しましょう。',
      'en': '',
    },
    'p0ztq7ee': {
      'ja': '次へ',
      'en': '',
    },
    'crbx1am6': {
      'ja': 'Home',
      'en': '',
    },
  },
  // OnBord4
  {
    'kjxnvlk4': {
      'ja': '選んで登録をすすめましょう',
      'en': '',
    },
    'rnwo4vjo': {
      'ja': '招待を受けた方',
      'en': '',
    },
    '6hliki2i': {
      'ja': 'パパ・ママ\nその他管理者の方',
      'en': '',
    },
    'f2q1wcl6': {
      'ja': 'Home',
      'en': '',
    },
  },
  // invitation
  {
    'ux00n169': {
      'ja': '招待を受けた方',
      'en': '',
    },
    'jbhlpa5b': {
      'ja': 'Home',
      'en': '',
    },
  },
  // registerPosition
  {
    'a6w2xz6q': {
      'ja': 'お子様との関係をお選びください',
      'en': '',
    },
    'dplnfn1y': {
      'ja': 'ママ',
      'en': '',
    },
    '5ij4vy5v': {
      'ja': 'ママ',
      'en': '',
    },
    'c3na2c00': {
      'ja': 'パパ',
      'en': '',
    },
    'uotru8ld': {
      'ja': 'パパ',
      'en': '',
    },
    'y5t1lq6x': {
      'ja': 'その他の管理者',
      'en': '',
    },
    'uz6cgr0t': {
      'ja': 'その他の管理者',
      'en': '',
    },
    'h8ojx23k': {
      'ja': 'ママ・パパ以外の立場の方',
      'en': '',
    },
    'spaxbzl9': {
      'ja': 'ご利用には利用規約およびプライバシーポリシーに\n同意が必要です。',
      'en': '',
    },
    'noxxww6y': {
      'ja': '次へ',
      'en': '',
    },
    'xovmk574': {
      'ja': 'ユーザー登録',
      'en': '',
    },
    'akte4in4': {
      'ja': 'Home',
      'en': '',
    },
  },
  // registerFamilyName
  {
    'ssgte4nz': {
      'ja': '家族のグループ名を教えてください',
      'en': '',
    },
    'hw9igxja': {
      'ja': '〇〇家',
      'en': '',
    },
    'uefklz9a': {
      'ja': '登録した内容はいつでも変更できます。',
      'en': '',
    },
    '0iru4n8c': {
      'ja': '次へ',
      'en': '',
    },
    'qj34ff3x': {
      'ja': 'ユーザー登録',
      'en': '',
    },
    'lf0z8zhl': {
      'ja': 'Home',
      'en': '',
    },
  },
  // registerChildlen
  {
    'wceqqr7x': {
      'ja': 'お子様の情報を追加してください',
      'en': '',
    },
    'e6iepqo3': {
      'ja': 'お子様を追加する',
      'en': '',
    },
    'yuwlulcm': {
      'ja': '登録済みのお子様',
      'en': '',
    },
    'oicinu2b': {
      'ja': '次へ',
      'en': '',
    },
    'w8nrpk4j': {
      'ja': 'ユーザー登録',
      'en': '',
    },
    'eov1iyjw': {
      'ja': 'Home',
      'en': '',
    },
  },
  // addCildren
  {
    '8vjpdqyl': {
      'ja': 'お子様の名前を入力',
      'en': '',
    },
    '7100zqp8': {
      'ja': '子供を追加する',
      'en': '',
    },
    '944imqdy': {
      'ja': '追加',
      'en': '',
    },
    'yrf8q7eg': {
      'ja': 'Home',
      'en': '',
    },
  },
  // registerAut
  {
    'kcvqbf75': {
      'ja': 'ユーザー登録をして\nLullabeeを始めよう',
      'en': '',
    },
    'vged1n0f': {
      'ja': 'Googleで登録する',
      'en': '',
    },
    '23sd6lgy': {
      'ja': 'Appleで登録する',
      'en': '',
    },
    '3okua023': {
      'ja': 'メールアドレスで登録する',
      'en': '',
    },
    'cnxm8hga': {
      'ja': 'ユーザー登録',
      'en': '',
    },
    'ulrgswn7': {
      'ja': 'Home',
      'en': '',
    },
  },
  // library
  {
    'tqzbymfy': {
      'ja': 'ファミリー',
      'en': '',
    },
    'd7cpta2l': {
      'ja': '西村家',
      'en': '',
    },
    '0mcn32wm': {
      'ja': '家族を追加する',
      'en': '',
    },
    'zwkgpuhf': {
      'ja': 'マイフォルダ',
      'en': '',
    },
    'nqgtt00o': {
      'ja': 'おやすみ',
      'en': '',
    },
    'grnanbbn': {
      'ja': 'ライブラリ',
      'en': '',
    },
    '6s7y18k6': {
      'ja': 'ライブラリ',
      'en': '',
    },
  },
  // post
  {
    '0lmbscih': {
      'ja': '今日の会話にタイトルをつけましょう',
      'en': '',
    },
    'lcvahjb2': {
      'ja': '今日の会話に一言メモをつけましょう',
      'en': '',
    },
    'n5zr1v76': {
      'ja': '音声をアップロード',
      'en': '',
    },
    'a29mb4og': {
      'ja': '誰との会話ですか？',
      'en': '',
    },
    'et5z8i1r': {
      'ja': 'Search...',
      'en': '',
    },
    'dc0clkb4': {
      'ja': 'Option 1',
      'en': '',
    },
    'q7ysp1xc': {
      'ja': 'Option 2',
      'en': '',
    },
    '1jolusyg': {
      'ja': 'Option 3',
      'en': '',
    },
    '1n3g98x4': {
      'ja': '会話を記録する',
      'en': '',
    },
    'czzurmag': {
      'ja': '投稿',
      'en': '',
    },
    't2binzdg': {
      'ja': 'Home',
      'en': '',
    },
  },
  // registerUserName
  {
    'sjrxy3vv': {
      'ja': 'あなたの名前を教えてください',
      'en': '',
    },
    'sc0kdkwq': {
      'ja': '登録した内容はいつでも変更できます。',
      'en': '',
    },
    'fqkvau2h': {
      'ja': '次へ',
      'en': '',
    },
    'ppff3tln': {
      'ja': 'ユーザー登録',
      'en': '',
    },
    'g54tvzy1': {
      'ja': 'Home',
      'en': '',
    },
  },
  // registerMail
  {
    'clewf7d6': {
      'ja': 'メールアドレスとパスワードを\n入力しましょう',
      'en': '',
    },
    '9d6wr36h': {
      'ja': 'メールアドレス',
      'en': '',
    },
    'lmqhk3pj': {
      'ja': '',
      'en': '',
    },
    '59k8pehw': {
      'ja': 'パスワード',
      'en': '',
    },
    '8alu7g51': {
      'ja': 'パスワードを再度入力',
      'en': '',
    },
    'wmup2fy2': {
      'ja': '次へ',
      'en': '',
    },
    '6hhn85db': {
      'ja': 'メールアドレスで登録',
      'en': '',
    },
    'iy09k2er': {
      'ja': 'Home',
      'en': '',
    },
  },
  // textInput
  {
    'xs4uyres': {
      'ja': '名前を入力',
      'en': '',
    },
  },
  // Miscellaneous
  {
    '0ojcbkad': {
      'ja': '次へ',
      'en': '',
    },
    'qurcqz25': {
      'ja': 'TextField',
      'en': '',
    },
    'cq14twgw': {
      'ja': '入力してください',
      'en': '',
    },
    'fgo13w21': {
      'ja': 'マイクを許可しますか？',
      'en': '',
    },
    'a0ptq78h': {
      'ja': 'カレンダーを許可しますか？',
      'en': '',
    },
    'vgcskaov': {
      'ja': '通知を許可しますか？',
      'en': '',
    },
    '77zt8ayp': {
      'ja': '写真ライブラリーを許可しますか？',
      'en': '',
    },
    'urcbetmd': {
      'ja': '',
      'en': '',
    },
    'd05daow1': {
      'ja': '',
      'en': '',
    },
    '2fyu3mdl': {
      'ja': '',
      'en': '',
    },
    'vcraf5cs': {
      'ja': '',
      'en': '',
    },
    'tluhahw1': {
      'ja': '',
      'en': '',
    },
    'r9de9dlp': {
      'ja': '',
      'en': '',
    },
    'vmo8zgmf': {
      'ja': '',
      'en': '',
    },
    'nsfmsciy': {
      'ja': '',
      'en': '',
    },
    '7k82o0qf': {
      'ja': '',
      'en': '',
    },
    'uuf8pf83': {
      'ja': '',
      'en': '',
    },
    'qfqii1ah': {
      'ja': '',
      'en': '',
    },
    'u9clnjvp': {
      'ja': '',
      'en': '',
    },
    'zidy48kw': {
      'ja': '',
      'en': '',
    },
    'cj72ome7': {
      'ja': '',
      'en': '',
    },
    '6skavhg2': {
      'ja': '',
      'en': '',
    },
    '6n26nn4h': {
      'ja': '',
      'en': '',
    },
    'ygz4nx3r': {
      'ja': '',
      'en': '',
    },
    '7occ8mlp': {
      'ja': '',
      'en': '',
    },
    '7urpsy6n': {
      'ja': '',
      'en': '',
    },
    'ss0rpyhu': {
      'ja': '',
      'en': '',
    },
    'q3dcnfka': {
      'ja': '',
      'en': '',
    },
    'rez9hlx3': {
      'ja': '',
      'en': '',
    },
    '96moaiys': {
      'ja': '',
      'en': '',
    },
    'idxduc2h': {
      'ja': '',
      'en': '',
    },
    '0ewxlecm': {
      'ja': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
