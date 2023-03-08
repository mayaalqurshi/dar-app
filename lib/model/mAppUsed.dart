class MAppUsed {
  final String id;
  final String image;
  final String cityId;

  MAppUsed({
    required this.id,
    required this.image,
    required this.cityId,
  });

  @override
  String toString() {
    return 'MAppUsed $id  $image  ';
  }

  static final List<MAppUsed> mAppUsed = [
    MAppUsed(
      id: '1',
      cityId: '1',
      image:
          'https://play-lh.googleusercontent.com/MWadEoaHru4kzqyGIxnkftmdvwa-Np4LKRb3zf2PEiyo7ByXAGoGJG0Sa2EdFPlnnVLf',
    ),
    MAppUsed(
      id: '2',
      cityId: '1',
      image:
          'https://play-lh.googleusercontent.com/x8n-yOMt1bLCCUBAYo7YHMDFHfu9LK5HiGINH8M8IUaxFKeU0N8rlQOs8R8sfwv4KttU',
    ),
    MAppUsed(
      id: '3',
      cityId: '1',
      image:
          'https://play-lh.googleusercontent.com/vo3LYx5f9xGcGD_23tnXYLtbShsTveRpKslOiB14QOu95I9A2OkB2wTB_ORd2-RB1E4',
    ),
    MAppUsed(
      id: '4',
      cityId: '2',
      image: 'https://play-lh.googleusercontent.com/ACjdk21URmSwVPW5WkhWevurjxVvsX4xwLGtO0aIt1R00nrOvX34o6_wUH_qjqCg6g',
    ),
    MAppUsed(
      id: '5',
      cityId: '2',
      image:
          'https://helios-i.mashable.com/imagery/articles/03y6VwlrZqnsuvnwR8CtGAL/hero-image.fill.size_1248x702.v1623372852.jpg',
    ),
    MAppUsed(
        id: '6',
        cityId: '2',
        image:
            'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/v1410194258/bxystz7a3yyqqmgigkuo.png'),
    MAppUsed(
      id: '7',
      cityId: '3',
      image: 'https://play-lh.googleusercontent.com/ACjdk21URmSwVPW5WkhWevurjxVvsX4xwLGtO0aIt1R00nrOvX34o6_wUH_qjqCg6g',
    ),
    MAppUsed(
      id: '8',
      cityId: '3',
      image: 'https://jamalouki.net/uploads/article/default_article/a924f3218a378e3dce4c82827a3d9604.webp',
    ),
    MAppUsed(
      id: '9',
      cityId: '3',
      image:
          'https://play-lh.googleusercontent.com/vo3LYx5f9xGcGD_23tnXYLtbShsTveRpKslOiB14QOu95I9A2OkB2wTB_ORd2-RB1E4',
    ),
    MAppUsed(
      id: '10',
      cityId: '4',
      image: 'https://pbs.twimg.com/profile_images/1600869068025782273/4ut_xe3a_400x400.jpg',
    ),
    MAppUsed(
      id: '11',
      cityId: '4',
      image:
          'https://play-lh.googleusercontent.com/x8n-yOMt1bLCCUBAYo7YHMDFHfu9LK5HiGINH8M8IUaxFKeU0N8rlQOs8R8sfwv4KttU',
    ),
    MAppUsed(
      id: '12',
      cityId: '4',
      image:
          'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/v1410194258/bxystz7a3yyqqmgigkuo.png',
    ),
    MAppUsed(
      id: '13',
      cityId: '5',
      image: 'https://lh3.googleusercontent.com/MDSGddPuzqlkF06DtWkzqbAwb5vEHfAnH8UHaR63128RDkNyDNYEqUGlniUKXK-t9ZkK',
    ),
    MAppUsed(
      id: '13',
      cityId: '5',
      image:
          'https://image.winudf.com/v2/image1/Y29tLnNhcHRjby5hbmRyb2lkLmFmY19pY29uXzE2NjQ4OTY4NzJfMDU1/icon.png?w=280&fakeurl=1',
    ),
    MAppUsed(
      id: '13',
      cityId: '5',
      image: 'https://thechefz.co/wp-content/uploads/2021/07/thechefzlogo.png',
    ),
    MAppUsed(
      id: '14',
      cityId: '6',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhuPMc87VT4ZlWPwHtR-ItAeCrDDx0aRemVWazy25h5ifnEoqehoFmSbQvcxgLT6T53yw&usqp=CAU',
    ),
    MAppUsed(
      id: '14',
      cityId: '6',
      image:
          'https://play-lh.googleusercontent.com/x8n-yOMt1bLCCUBAYo7YHMDFHfu9LK5HiGINH8M8IUaxFKeU0N8rlQOs8R8sfwv4KttU',
    ),
    MAppUsed(
      id: '14',
      cityId: '6',
      image:
          'https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/v1410194258/bxystz7a3yyqqmgigkuo.png',
    ),
  ];
  factory MAppUsed.fromMap(Map<String, dynamic> map) {
    return MAppUsed(id: map['id'], image: map['image'], cityId: map['city_id']);
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'image': image, 'city_id': cityId};
  }
}
