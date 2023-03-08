class Category {
  final String id;
  final String image;
  final String name;

  Category({
    required this.id,
    required this.image,
    required this.name,
  });

  @override
  String toString() {
    return 'Category $id  $image $name  ';
  }

  static final List<Category> categories = [
    Category(
      id: '1',
      image: 'https://cdn-icons-png.flaticon.com/512/5643/5643764.png',
      name: 'تطبيقات المطاعم',
    ),
    Category(
      id: '2',
      image: 'https://cdn-icons-png.flaticon.com/512/6931/6931196.png',
      name: 'تطبيقات المواصلات ',
    ),
    Category(
      id: '3',
      image: 'https://cdn-icons-png.flaticon.com/512/8749/8749912.png',
      name: 'الاماكن الترفيهية',
    ),
    Category(
      id: '4',
      image: 'https://cdn-icons-png.flaticon.com/512/948/948118.png',
      name: 'المطاعم ',
    ),
    Category(
      id: '5',
      image: 'https://cdn-icons-png.flaticon.com/512/914/914832.png',
      name: 'الاسواق',
    ),
    Category(
      id: '6',
      image: 'https://cdn-icons-png.flaticon.com/512/1800/1800226.png',
      name: 'الاماكن السياحية',
    ),
    Category(
      id: '7',
      image: 'https://cdn-icons-png.flaticon.com/512/3378/3378741.png',
      name: 'الفنادق',
    ),
    Category(
      id: '8',
      image: 'https://cdn-icons-png.flaticon.com/512/2749/2749678.png',
      name: 'المستشفيات',
    ),
  ];
  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      image: map['image'],
      name: map['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'image': image,
      'name': name,
    };
  }
}

class Section {
  final String secId;
  final String cat_id;
  final String image;
  final String name;
  final String rate;
  final String url;

  Section({
    required this.secId,
    required this.cat_id,
    required this.image,
    required this.name,
    required this.rate,
    required this.url,
  });
  @override
  String toString() {
    return 'Section $secId $image $name $rate $url';
  }

  static final List<Section> sections = [
    Section(
      secId: '1',
      cat_id: '1',
      image: 'https://iconape.com/wp-content/png_logo_vector/jahez.png',
      name: 'جاهز',
      rate: '٤.٦',
      url: 'https://apps.apple.com/us/app/jahez/id1137352156',
    ),
    Section(
      secId: '2',
      cat_id: '1',
      image: 'https://play-lh.googleusercontent.com/teoWlXQGlDMRdyKqZX1EKxCRADGihxUlXVyu4_Fuzbq2lb-joKXKTzDPbUh8VXDb3w',
      name: 'ذا شفز',
      rate: '٤.٦',
      url: 'https://apps.apple.com/sa/app/the-chefz-%D8%B0%D8%A7-%D8%B4%D9%81%D8%B2/id1139450244',
    ),
    Section(
      secId: '3',
      cat_id: '1',
      image:
          'https://upload.wikimedia.org/wikipedia/ar/thumb/a/aa/Hungerstation%28wikiar%29.svg/1280px-Hungerstation%28wikiar%29.svg.png',
      name: 'هنقرستيشن',
      rate: '٤.٤',
      url: 'https://apps.apple.com/sa/app/hungerstation/id596011949',
    ),
    Section(
      secId: '4',
      cat_id: '1',
      image: 'https://store4apps.net/wp-content/uploads/2022/07/toyou.webp',
      name: 'تويو',
      rate: '٤.٧',
      url: 'https://apps.apple.com/sa/app/toyou-delivery-more/id1196302015',
    ),
    Section(
      secId: '5',
      cat_id: '1',
      image:
          'https://alcouponat.com/wp-content/uploads/2022/11/-%D8%AE%D8%B5%D9%85-%D8%B4%D9%82%D8%B1%D8%AF%D9%8A-Shgardi-app-1-e1669486147470.png',
      name: 'شقردي',
      rate: '٤.٥',
      url: 'https://apps.apple.com/sa/app/shgardi-%D8%B4%D9%82%D8%B1%D8%AF%D9%8A/id1452817340',
    ),
    Section(
      secId: '6',
      cat_id: '2',
      image:
          'https://image.cnbcfm.com/api/v1/image/105814477-1553599428640gettyimages-1047444988.jpeg?v=1677583288&w=929&h=523&vtcrop=y',
      name: ' كريم',
      rate: '٤.٦',
      url: 'https://apps.apple.com/sa/app/careem-ride-delivery-pay/id592978487',
    ),
    Section(
      secId: '7',
      cat_id: '2',
      image: 'https://radar.assets.avrotros.nl/user_upload_2020/23032022-uber-prijsstijging.jpg',
      name: 'اوبر',
      rate: '٤.٧',
      url: 'https://apps.apple.com/sa/app/uber-request-a-ride/id368677368',
    ),
    Section(
      secId: '8',
      cat_id: '2',
      image: 'https://www.orange.jo/ar/orangemoney/PublishingImages/Orange-money-images/jeeny.png',
      name: 'جيني',
      rate: '٣.٧',
      url: 'https://apps.apple.com/sa/app/jeeny-%D8%AC%D9%8A%D9%86%D9%8A/id1178701124',
    ),
    Section(
      secId: '9',
      cat_id: '2',
      image: 'https://pbs.twimg.com/media/FnPXsVMWYAE-6YO?format=jpg&name=large',
      name: 'وصليني',
      rate: '٤.٥',
      url: 'https://apps.apple.com/sa/app/%D9%88%D8%B5-%D9%84%D9%8A%D9%86%D9%8A/id1450930272',
    ),
    Section(
      secId: '10',
      cat_id: '2',
      image: 'https://bolt.eu/og-img.jpg',
      name: 'بولت',
      rate: '٤.٦',
      url: 'https://apps.apple.com/sa/app/bolt-request-a-ride/id675033630',
    ),
    Section(
      secId: '11',
      cat_id: '3',
      image: 'https://www.ngmisr.com/wp-content/uploads/2022/10/%D9%88%D9%86%D8%AA%D8%B1-.png',
      name: 'ونتر وندر لاند',
      rate: '٤.٦',
      url: 'https://goo.gl/maps/CzKc9ATLenwH6cAS8',
    ),
    Section(
      secId: '12',
      cat_id: '3',
      image:
          'https://vid.alarabiya.net/images/2022/11/22/1ee6ea9e-1da6-4d90-88a9-f18a0c5cfb97/1ee6ea9e-1da6-4d90-88a9-f18a0c5cfb97_16x9_1200x676.jpg',
      name: 'بوليفارد وورلد',
      rate: '٤.٧',
      url: 'https://goo.gl/maps/DmeofzDCAXj49oj29',
    ),
    Section(
      secId: '13',
      cat_id: '3',
      image: 'https://ar.timeoutriyadh.com/cloud/artimeoutriyadh/2022/02/21/the-groves-1024x768-1.jpg',
      name: 'ذا جروفز',
      rate: '٤.٠',
      url: 'https://goo.gl/maps/W1gkr95ozFQujXzS9',
    ),
    Section(
      secId: '14',
      cat_id: '3',
      image: 'https://www.alyaum.com/uploads/images/2023/01/02/1681628.PNG',
      name: 'ليالي الدرعية ',
      rate: '٣.٩',
      url: 'https://goo.gl/maps/6hFCcWVYm8jCLYvM7',
    ),
    Section(
      secId: '15',
      cat_id: '4',
      image: 'https://pbs.twimg.com/media/ErXtBtGXUAA59tn.jpg',
      name: 'بليونير ',
      rate: '٣.٥',
      url: 'https://goo.gl/maps/ErWDmt8AYrJGb6Tq8',
    ),
    Section(
      secId: '16',
      cat_id: '4',
      image:
          'https://i0.wp.com/www.des-traveler.com/wp-content/uploads/2022/06/Kick-off-2021-in-style___MYAZUSAUDI___Riyadh-_riyadhrestaurantsJPG-scaled.jpg?resize=600%2C600&ssl=1',
      name: 'ميازو  ',
      rate: '٤.٢',
      url: 'https://goo.gl/maps/f31aRRsi6YNJGUyq5',
    ),
    Section(
      secId: '17',
      cat_id: '4',
      image: 'https://eatapp.co/riyadh-restaurants/images/le-maschou-7946dc-restaurant-1.jpg?height=500&width=850',
      name: 'لوماشو ',
      rate: '٤.٢',
      url: 'https://goo.gl/maps/XZGhbtgK1CP7QzSz5',
    ),
    Section(
      secId: '18',
      cat_id: '4',
      image: 'https://cafesriyadh.com/wp-content/uploads/2020/02/serafina-riyadh.jpg',
      name: 'سيرافينا ',
      rate: '٤.٠',
      url: 'https://goo.gl/maps/uuBj5RCrkZBETvTu8',
    ),
    Section(
      secId: '19',
      cat_id: '5',
      image: 'https://whatsonsaudiarabia.com/ar/wp-content/uploads/2022/04/thumb_46806_700_400_0_0_exact.jpg',
      name: 'الرياض بارك ',
      rate: '٤.٤',
      url: 'https://goo.gl/maps/UTbQMPWs9bgcJNvT6',
    ),
    Section(
      secId: '20',
      cat_id: '5',
      image:
          'https://cdn.saudigates.net/wp-content/uploads/2022/05/%D8%B3%D9%86%D8%AA%D8%B1%D9%8A%D8%A7-%D9%85%D9%88%D9%84-%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6-3.webp',
      name: 'سنتريا ',
      rate: '٤.٤',
      url: 'https://goo.gl/maps/qpsS1QDrTxVwQEMJA',
    ),
    Section(
      secId: '21',
      cat_id: '5',
      image: 'https://www.urtrips.com/wp-content/uploads/2023/01/Dammam-Malls-5.jpg',
      name: 'النخيل مول  ',
      rate: '٤.٣',
      url: 'https://goo.gl/maps/WacDJ4tr92MR6pty8',
    ),
    Section(
      secId: '22',
      cat_id: '5',
      image:
          'https://omrabookings.com/blog/wp-content/uploads/2022/01/%D8%A8%D8%A7%D9%86%D9%88%D8%B1%D8%A7%D9%85%D8%A7-%D9%85%D9%88%D9%84-%D8%A7%D9%84%D8%B1%D9%8A%D8%A7%D8%B6.jpg',
      name: 'بانوراما ',
      rate: '٤.٤',
      url: 'https://goo.gl/maps/S6ZQNDibRkiTgo766',
    ),
    Section(
      secId: '23',
      cat_id: '6',
      image: 'https://www.visitsaudi.com/content/dam/saudi-tourism/media/diriyah-articles/historical-dir-iyah.jpg',
      name: 'الدرعية التاريخية ',
      rate: '٤.٥',
      url: 'https://goo.gl/maps/4963wJ2i5DVGxQ9Y9',
    ),
    Section(
      secId: '24',
      cat_id: '6',
      image:
          'https://sa2eh.awicdn.com/site-images/sites/default/files/sa2eh-prod/article/c/4/388620/9f555d2f4d3cdfa46cb24b9922ae2f918b05f15e-140121204929.jpg?preset=v3.0_1200xDYN&save-png=1&rnd=211320212SA2EH',
      name: 'جبال طويق ',
      rate: '٤.٣',
      url: 'https://goo.gl/maps/MjptkTgxpbK2GD367',
    ),
    Section(
      secId: '25',
      cat_id: '6',
      image: 'https://www.viewsaudi.com/ar/wp-content/uploads/2022/07/Masmak-Fortress-3.jpg',
      name: 'قصر المصمك ',
      rate: '٤.٣',
      url: 'https://goo.gl/maps/ombE9ahjgeFZBane6',
    ),
    Section(
      secId: '26',
      cat_id: '6',
      image:
          'https://gumlet.assettype.com/sabq%2Fimport%2Fuploads%2Fmaterial-file%2F60c7617af1e326a4c98b4594%2F60c763be66684.jpg?auto=format%2Ccompress&fit=max&w=1200',
      name: 'المتحف الوطني ',
      rate: '٤.٥',
      url: 'https://goo.gl/maps/SE1Lpir5KArMfW8t9',
    ),
    Section(
      secId: '27',
      cat_id: '7',
      image: 'http://www.ogerinternational.com/assets/Galleries/oger-lhpr-03.jpg',
      name: 'الرتز كارلتون ',
      rate: '٤.٦',
      url: 'https://goo.gl/maps/aZKv51RmDL1iQpt87',
    ),
    Section(
      secId: '28',
      cat_id: '7',
      image:
          'https://www.arrajol.com/sites/default/files/2019/08/19/275121-1.%D9%81%D9%86%D8%AF%D9%82%20%D9%85%D9%88%D9%81%D9%86%D8%A8%D9%8A%D9%83%20%D9%85%D9%83%D8%A9..%20%D8%A7%D9%84%D8%A7%D8%AE%D8%AA%D9%8A%D8%A7%D8%B1%20%D8%A7%D9%84%D9%85%D8%AB%D8%A7%D9%84%D9%8A%20%D9%84%D8%B2%D9%88%D8%A7%D8%B1%20%D9%88%D8%AD%D8%AC%D8%A7%D8%AC%20%D8%A8%D9%8A%D8%AA%20%D8%A7%D9%84%D9%84%D9%87%20%D8%A7%D9%84%D8%AD%D8%B1%D8%A7%D9%85.jpg',
      name: 'موفنبيك ',
      rate: '٤.٧',
      url: 'https://goo.gl/maps/K279UnKb3N1M8kJY6',
    ),
    Section(
      secId: '29',
      cat_id: '7',
      image:
          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/170588815.jpg?k=67a6db0e2d93bcec29c7b18b0d80373ddfd95763ef7e23e74517ed78df54347c&o=&hp=1',
      name: 'هليتون ',
      rate: '٤.٣',
      url: 'https://goo.gl/maps/dHir9WDzt1zWTixp6',
    ),
    Section(
      secId: '30',
      cat_id: '7',
      image:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0a/16/9a/0c/hotel-view-at-night.jpg?w=700&h=-1&s=1',
      name: 'بريرا ',
      rate: '٤.١',
      url: 'https://goo.gl/maps/FGHdQXRNp6gT38Gk8',
    ),
    Section(
      secId: '31',
      cat_id: '8',
      image: 'https://i0.wp.com/eduschool40.blog/wp-content/uploads/2021/11/5187466-1804471750.jpg',
      name: 'مستشفى الملك فيصل ',
      rate: '٤.١',
      url: 'https://goo.gl/maps/V1dVWoKUbCERvQGo7',
    ),
    Section(
      secId: '32',
      cat_id: '8',
      image:
          'https://vid.alarabiya.net/images/2020/02/06/f1ac83c2-fc94-4be3-bb90-f569892f5a59/f1ac83c2-fc94-4be3-bb90-f569892f5a59_16x9_600x338.JPG',
      name: 'الحبيب ',
      rate: '٣.١',
      url: 'https://goo.gl/maps/aP95XRnz1hXJAZDA6',
    ),
    Section(
      secId: '33',
      cat_id: '8',
      image: 'https://pbs.twimg.com/media/EhTrMB8XcAAOCV8.jpg',
      name: 'الحرس الوطني ',
      rate: '٣.١',
      url: 'https://goo.gl/maps/HAehEQwTYj9urPM98',
    ),
  ];

  factory Section.fromMap(Map<String, dynamic> map) {
    return Section(
      secId: map['secId'],
      cat_id: map['cat_id'],
      image: map['image'],
      name: map['name'],
      rate: map['rate'],
      url: map['url'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'secId': secId,
      'cat_id': cat_id,
      'image': image,
      'name': name,
      'rate': rate,
      'url': url,
    };
  }
}
