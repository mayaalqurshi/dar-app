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
      image: 'https://upload.wikimedia.org/wikipedia/ar/thumb/0/0b/Careem_logo_AR.svg/1280px-Careem_logo_AR.svg.png',
      name: ' كريم',
      rate: '٤.٦',
      url: 'https://apps.apple.com/sa/app/careem-ride-delivery-pay/id592978487',
    ),
    Section(
      secId: '7',
      cat_id: '2',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Uber_logo_2018.svg/2560px-Uber_logo_2018.svg.png',
      name: 'اوبر',
      rate: '٤.٧',
      url: 'https://apps.apple.com/sa/app/uber-request-a-ride/id368677368',
    ),
    Section(
      secId: '8',
      cat_id: '2',
      image:
          'https://img1.wsimg.com/isteam/ip/da8381e9-83e7-45d2-a409-e6664d8af3ae/Jeeny-Logo-550x550px-1.png/:/cr=t:0%25,l:0%25,w:100%25,h:100%25',
      name: 'جيني',
      rate: '٣.٧',
      url: 'https://apps.apple.com/sa/app/jeeny-%D8%AC%D9%8A%D9%86%D9%8A/id1178701124',
    ),
    Section(
      secId: '9',
      cat_id: '2',
      image: 'https://tastibh.com/img/logo44.png',
      name: 'وصليني',
      rate: '٤.٥',
      url: 'https://apps.apple.com/sa/app/%D9%88%D8%B5-%D9%84%D9%8A%D9%86%D9%8A/id1450930272',
    ),
    Section(
      secId: '10',
      cat_id: '2',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Bolt_logo.png/800px-Bolt_logo.png',
      name: 'بولت',
      rate: '٤.٦',
      url: 'https://apps.apple.com/sa/app/bolt-request-a-ride/id675033630',
    ),
    Section(
      secId: '11',
      cat_id: '3',
      image: 'https://m.eyeofriyadh.com/events/events_images/2019/10/2efdd0da40cb8.jpg',
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
      image: 'https://billionairesociety.com/riyadh-en/uploads/sites/9/2020/11/Billionaire-Riyadh-logo-White2.png',
      name: 'بليونير ',
      rate: '٣.٥',
      url: 'https://goo.gl/maps/ErWDmt8AYrJGb6Tq8',
    ),
    Section(
      secId: '16',
      cat_id: '4',
      image: 'https://images.redro.menu/pm.v1.0/myazu/riyadh/2020/12/09/20201209_myazu-riyadh-logo.png',
      name: 'ميازو  ',
      rate: '٤.٢',
      url: 'https://goo.gl/maps/f31aRRsi6YNJGUyq5',
    ),
    Section(
      secId: '17',
      cat_id: '4',
      image:
          'https://uploads-ssl.webflow.com/6347bcc78a91bf1447e211c7/6347ded68c56418065c0c445_Arabic%20Logo%20Final%20(1).png',
      name: 'لوماشو ',
      rate: '٤.٢',
      url: 'https://goo.gl/maps/XZGhbtgK1CP7QzSz5',
    ),
    Section(
      secId: '18',
      cat_id: '4',
      image: 'https://serafinaboston.com/wp-content/uploads/logo_main-blue-2.png',
      name: 'سيرافينا ',
      rate: '٤.٠',
      url: 'https://goo.gl/maps/uuBj5RCrkZBETvTu8',
    ),
    Section(
      secId: '19',
      cat_id: '5',
      image: 'https://riyadh-park.com/wp-content/uploads/2019/09/RIYADH-PARK_-CORPORATE-GUIDELINE-2018-copy-10.png',
      name: 'الرياض بارك ',
      rate: '٤.٤',
      url: 'https://goo.gl/maps/UTbQMPWs9bgcJNvT6',
    ),
    Section(
      secId: '20',
      cat_id: '5',
      image: 'https://mallsruh.com/img/mall/sentriaMAll.png',
      name: 'سنتريا ',
      rate: '٤.٤',
      url: 'https://goo.gl/maps/qpsS1QDrTxVwQEMJA',
    ),
    Section(
      secId: '21',
      cat_id: '5',
      image: 'https://mallsruh.com/img/mall/AlnakeelMall.png',
      name: 'النخيل مول  ',
      rate: '٤.٣',
      url: 'https://goo.gl/maps/WacDJ4tr92MR6pty8',
    ),
    Section(
      secId: '22',
      cat_id: '5',
      image: 'http://panorama-mall.com/wp-content/uploads/2020/11/MALLS-ALL-LOGOS-2020-02-1.png',
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
      image: 'https://1000logos.net/wp-content/uploads/2021/04/Ritz-Carlton-logo.png',
      name: 'الرتز كارلتون ',
      rate: '٤.٦',
      url: 'https://goo.gl/maps/aZKv51RmDL1iQpt87',
    ),
    Section(
      secId: '28',
      cat_id: '7',
      image: 'https://1000logos.net/wp-content/uploads/2019/12/M%C3%B6venpick-Logo.png',
      name: 'موفنبيك ',
      rate: '٤.٧',
      url: 'https://goo.gl/maps/K279UnKb3N1M8kJY6',
    ),
    Section(
      secId: '29',
      cat_id: '7',
      image: 'https://assets.stickpng.com/images/589a46f65aa6293a4aac48b4.png',
      name: 'هليتون ',
      rate: '٤.٣',
      url: 'https://goo.gl/maps/dHir9WDzt1zWTixp6',
    ),
    Section(
      secId: '30',
      cat_id: '7',
      image: 'https://brairahotels.com/wp-content/uploads/2020/08/braira-new-logo.png',
      name: 'بريرا ',
      rate: '٤.١',
      url: 'https://goo.gl/maps/FGHdQXRNp6gT38Gk8',
    ),
    Section(
      secId: '31',
      cat_id: '8',
      image: 'http://www.kfshrc.edu.sa/templates/shared/img/kfshrc_logo_v.png',
      name: 'مستشفى الملك فيصل ',
      rate: '٤.١',
      url: 'https://goo.gl/maps/V1dVWoKUbCERvQGo7',
    ),
    Section(
      secId: '32',
      cat_id: '8',
      image: 'https://hmguae.com/wp-content/uploads/2022/04/dr.sulaiman-logo-01.png',
      name: 'الحبيب ',
      rate: '٣.١',
      url: 'https://goo.gl/maps/aP95XRnz1hXJAZDA6',
    ),
    Section(
      secId: '33',
      cat_id: '8',
      image:
          'https://upload.wikimedia.org/wikipedia/ar/thumb/2/28/%D8%A7%D9%84%D8%B4%D8%A4%D9%88%D9%86_%D8%A7%D9%84%D8%B5%D8%AD%D9%8A%D8%A9_%D9%84%D9%84%D8%AD%D8%B1%D8%B3_%D8%A7%D9%84%D9%88%D8%B7%D9%86%D9%8A.svg/1200px-%D8%A7%D9%84%D8%B4%D8%A4%D9%88%D9%86_%D8%A7%D9%84%D8%B5%D8%AD%D9%8A%D8%A9_%D9%84%D9%84%D8%AD%D8%B1%D8%B3_%D8%A7%D9%84%D9%88%D8%B7%D9%86%D9%8A.svg.png',
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
