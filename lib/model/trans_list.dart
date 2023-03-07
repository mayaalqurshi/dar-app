class TransList {
  final String fullName;
  final String city;
  final String language;
  final String phoneNumber;
  final String email;

  TransList({
    required this.fullName,
    required this.city,
    required this.language,
    required this.phoneNumber,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'city': city,
      'language': language,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  factory TransList.fromMap(Map<String, dynamic> map) {
    return TransList(
      fullName: map['fullName'],
      city: map['city'],
      language: map['language'],
      phoneNumber: map['phoneNumber'],
      email: map['email'],
    );
  }
}
