import 'package:flutter/material.dart';

import '../../components/dar_drawer.dart';
import '../../components/section_card.dart';
import '../../components/title1.dart';

class AllSectionsPage extends StatelessWidget {
  const AllSectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/img/darlogo.jpg',
          width: 160,
        ),
      ),
      endDrawer: const DarDrawer(),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Title1('الأقسام')],
              ),
              const SizedBox(height: 35),
              const SectionCard(
                title: 'المطاعم',
                img:
                    'https://www.viewsaudi.com/ar/wp-content/uploads/2022/07/%D9%85%D8%B7%D8%A7%D8%B9%D9%85-%D8%A7%D9%84%D8%B1%D8%A7%D8%B4%D8%AF-%D9%85%D9%88%D9%84-%D8%A7%D9%84%D8%AE%D8%A8%D8%B10.jpg',
              ),
              const SizedBox(height: 20),
              const SectionCard(
                title: 'تطبيقات المواصلات ',
                img:
                    'https://www.arabnews.com/sites/default/files/styles/n_670_395/public/2021/08/22/2774556-2078835405.jpg?itok=4pM8oDus',
              ),
              const SizedBox(height: 20),
              const SectionCard(
                title: 'تطبيقات التوصيل ',
                img:
                    'https://img.freepik.com/premium-photo/food-delivery-service-employee-carrying-backpack-riding-bike-outdoors-holding-thermal-bag-box-with-fastfood-meal-order-deliveryman-bicycle-delivering-restaurant-takeaway-close-up_482257-54428.jpg',
              ),
              const SizedBox(height: 20),
              const SectionCard(
                title: 'المستشفيات',
                img:
                    'https://cdn.saudigates.net/wp-content/uploads/2022/05/%D9%85%D8%AF%D9%8A%D9%86%D8%A9-%D8%A7%D9%84%D9%85%D9%84%D9%83-%D8%B3%D8%B9%D9%88%D8%AF-%D8%A7%D9%84%D8%B7%D8%A8%D9%8A%D8%A9.jpg',
              ),
              const SizedBox(height: 50),
              const SectionCard(
                title: 'الاماكن السياحية',
                img: 'https://www.sayidaty.net/sites/default/files/styles/900_scale/public/2021-10/18499.jpeg',
              ),
              const SizedBox(height: 50),
            ],
          )
        ],
      ),
      backgroundColor: const Color(0xfffbf9f2),
    );
  }
}
