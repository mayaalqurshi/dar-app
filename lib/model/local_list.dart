class LocalList {
  final String fullName;
  final String city;
  final String phoneNumber;
  final String email;

  LocalList({
    required this.fullName,
    required this.city,
    required this.phoneNumber,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'city': city,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

  factory LocalList.fromMap(Map<String, dynamic> map) {
    return LocalList(
      fullName: map['fullName'],
      city: map['city'],
      phoneNumber: map['phoneNumber'],
      email: map['email'],
    );
  }
}
