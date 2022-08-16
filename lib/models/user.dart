class UserModel{
  final String id;
  final String username;
  final String christianName;
  final String department;
  final String email;
  final String photoUrl;
  final String phoneNumber;
  final String gebiGubaeGroup;
  final String homeCity;
  final String bio;
  final String universityId;
  final DateTime signedUpAt;
  final DateTime lastSeen;
  final bool isOnline;

  UserModel({
    required this.id,
    required this.username,
    required this.christianName,
    required this.department,
    required this.phoneNumber,
    required this.email,
    required this.photoUrl,
    required this.gebiGubaeGroup,
    required this.homeCity,
    required this.universityId,
    required this.signedUpAt,
    required this.bio,
    required this.lastSeen,
    required this.isOnline
  });

}
