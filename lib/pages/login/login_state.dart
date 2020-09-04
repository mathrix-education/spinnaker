enum LoginMode {
  Login,
  Register,
  RecoverPassword,
}

mixin LoginState {
  LoginMode mode = LoginMode.Login;

  final Map<LoginMode, String> _primaryTextMap = {
    LoginMode.Login: 'Connexion',
    LoginMode.Register: 'Inscription',
    LoginMode.RecoverPassword: 'Mot de passe oublié?'
  };

  final Map<LoginMode, String> _subtitleTextMap = {
    LoginMode.Login: 'Pas encore inscrit?',
    LoginMode.Register: 'Déjà inscrit?',
    LoginMode.RecoverPassword: '',
  };

  final Map<LoginMode, String> _actionTextMap = {
    LoginMode.Login: 'S\'inscrire',
    LoginMode.Register: 'Se connecter',
    LoginMode.RecoverPassword: '',
  };

  String get primaryText {
    return _primaryTextMap[mode];
  }

  String get subtitleText {
    return _subtitleTextMap[mode];
  }

  String get actionText {
    return _actionTextMap[mode];
  }
}
