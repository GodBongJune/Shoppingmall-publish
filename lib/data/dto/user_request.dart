class LoginReqDTO {
  final String appMemberEmail;
  final String appMemberPassword;
  final String appCode;
  final String snsType;

  LoginReqDTO({
    required this.appMemberEmail,
    required this.appMemberPassword,
    required this.appCode,
    required this.snsType,
  });

  Map<String, dynamic> toJson() => {
        "appMemberEmail": appMemberEmail,
        "appMemberPassword": appMemberPassword,
        "appCode": appCode,
        "snsType": snsType,
      };
}

class JoinReqDTO {
  final String appMemberEmail;
  final String appMemberPassword;
  final String appMemberPhone;
  final String appMemberName;
  final String appCode;
  final String appMemberPrivateAgree;

  JoinReqDTO({
    required this.appMemberEmail,
    required this.appMemberPassword,
    required this.appMemberPhone,
    required this.appMemberName,
    required this.appCode,
    required this.appMemberPrivateAgree,
  });

  Map<String, dynamic> toJson() => {
        "appMemberEmail": appMemberEmail,
        "appMemberPassword": appMemberPassword,
        "appMemberPhone": appMemberPhone,
        "appMemberName": appMemberName,
        "appCode": appCode,
        "appMemberPrivateAgree": appMemberPrivateAgree,
      };
}

class SearchDTO {
  final String appCode;
  final String appMemberEmail;
  final String emailAuthType;

  SearchDTO({
    required this.appCode,
    required this.appMemberEmail,
    required this.emailAuthType,
  });

  Map<String, dynamic> toJson() => {
        "appCode": appCode,
        "appMemberEmail": appMemberEmail,
        "emailAuthType": emailAuthType,
      };
}
