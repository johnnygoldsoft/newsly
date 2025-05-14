import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsly/screens/ui/newsCard.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map<String, String>> carouselArticles = [
    {
      'title': 'CNN Indonesia',
      'subtitle':
          'More storms hit central US with tornadoes and severe winds. while the West and North brace for more rain and show.',
      'image': 'assets/images/news1.jpg',
    },
    {
      'title': 'Tech Trends',
      'subtitle':
          'More storms hit central US with tornadoes and severe winds. while the West and North brace for more rain and show.',
      'image': 'assets/images/news1.jpg',
    },
    {
      'title': 'Health Tips',
      'subtitle':
          'More storms hit central US with tornadoes and severe winds. while the West and North brace for more rain and show.',
      'image': 'assets/images/news1.jpg',
    },
  ];

  // Categories with icons
  final List<Map<String, dynamic>> categories = [
    {'label': 'All', 'icon': null, 'filter': ''},
    {'label': 'Politics', 'icon': Icons.balance, 'filter': 'Politics'},
    {'label': 'Sport', 'icon': Icons.sports, 'filter': 'Sports'},
    {'label': 'Education', 'icon': Icons.school, 'filter': 'Education'},
    {'label': 'Gaming', 'icon': Icons.gamepad, 'filter': 'Nature'},
  ];

  // Articles
  final List<Map<String, String>> articles = [
    {
      'title': 'FIFA announces new regulations to tackle racism in football',
      'subtitle': 'Kristin Watson • Sports',
      'date': 'Feb 28, 2023',
      'category': 'Sports',
      'image': 'assets/images/stade.jpg',
    },
    {
      'title': 'Major wildfires continue to ravage Australia\'s forests',
      'subtitle': 'Marvin McKinney • Nature',
      'date': 'Feb 26, 2023',
      'category': 'Nature',
      'image': 'assets/images/route.jpeg',
    },
    {
      'title': 'New Education Policies for 2025: What You Need to Know',
      'subtitle': 'Jane Cooper • Education',
      'date': 'Feb 25, 2023',
      'category': 'Education',
      'image': 'assets/images/news1.jpg',
    },
    {
      'title': 'Political leaders meet for global peace summit',
      'subtitle': 'John Doe • Politics',
      'date': 'Feb 24, 2023',
      'category': 'Politics',
      'image': 'assets/images/news1.jpg',
    },
  ];

  // Selected category
  String selectedCategory = '';
  @override
  Widget build(BuildContext context) {
    // Filter articles by selected category
    List<Map<String, String>> filteredArticles = articles.where((article) {
      if (selectedCategory.isEmpty)
        return true; // Show all if 'All' is selected
      return article['category'] == selectedCategory;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            // Carousel d'articles
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Breaking News",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Show more",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CarouselSlider.builder(
              itemCount: carouselArticles.length,
              itemBuilder: (context, index, realIndex) {
                final item = carouselArticles[index];
                return NewsCard(
                  title: item['title']!,
                  subtitle: item['subtitle']!,
                  image: item['image']!,
                );
              },
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.28,
                viewportFraction: 0.95,
                enlargeCenterPage: false,
                autoPlay: true,
                // aspectRatio: 16 / 9,
                autoPlayCurve: Curves.easeInOut,
                autoPlayAnimationDuration: Duration(seconds: 2),
              ),
            ),
            SizedBox(height: 8.h),

            // Catégories

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection:
                      Axis.horizontal, // Définit la direction du scroll
                  child: Row(
                    children: categories.map((category) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                            vertical: 4.w), // Espacement entre les chips
                        child: ChoiceChip(
                          showCheckmark: false,
                          side: BorderSide.none,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(16.r), // Radius des bords
                          ),
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (category['label'] !=
                                  'All') // Vérifie si ce n'est pas "All"
                                Icon(category['icon'],
                                    size: 18, color: Colors.grey[700]),
                              if (category['label'] != 'All')
                                SizedBox(
                                    width:
                                        4), // Ajoute un espace si une icône est présente
                              Text(category['label']),
                            ],
                          ),
                          selected: selectedCategory == category['filter'],
                          onSelected: (bool selected) {
                            setState(() {
                              selectedCategory =
                                  selected ? category['filter'] : '';
                            });
                          },
                          backgroundColor: Colors.grey[200],
                          selectedColor: Colors.blue,
                          labelStyle: TextStyle(
                            color: selectedCategory == category['filter']
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),

            // Liste d'articles par catégorie

            SizedBox(height: 8.w),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended for You",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Show More",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: filteredArticles.length,
                itemBuilder: (context, index) {
                  final article = filteredArticles[index];
                  return RecommendedCard(
                    title: article['title']!,
                    subtitle: article['subtitle']!,
                    date: article['date']!,
                    image: article['image']!,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RecommendedCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String image;

  const RecommendedCard({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            image,
            width: 130.w,
            height: 130.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(1.w),
            height: 120.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // image
                    CircleAvatar(
                      radius: 8,
                      backgroundImage: AssetImage("assets/images/perso2.jpg"),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),

                    // titre
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
