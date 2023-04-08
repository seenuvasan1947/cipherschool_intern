import 'package:cipherschool/components/card_swiper_component.dart';
import 'package:cipherschool/components/course_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:card_swiper/card_swiper.dart';

class coursepage extends StatefulWidget {
  const coursepage({super.key});

  @override
  State<coursepage> createState() => _coursepageState();
}

class _coursepageState extends State<coursepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('courses'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Swiper(
                    itemBuilder: (context, index) {
                      return Image.asset(
                        images[index],
                        fit: BoxFit.fill,
                      );
                    },
                    // autoplay: true,
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    pagination: const SwiperPagination(
                        alignment: Alignment.bottomCenter),
                    control: const SwiperControl(),
                  ),
                ),
                Divider(),
                Text(
                  'Popular course',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Divider(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/javascript.jpeg',
                          'Jvasascript  free course',
                          'highly responsive',
                          '240 min',
                          'assets/instructor_logo1.png',
                          'priya'),
                           course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/javascript.jpeg',
                          'Jvasascript  free course',
                          'highly responsive',
                          '240 min',
                          'assets/instructor_logo1.png',
                          'priya'),
                    ],
                  ),
                ),
              Text(
                  'Latest course',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Divider(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/javascript.jpeg',
                          'Jvasascript  free course',
                          'highly responsive',
                          '240 min',
                          'assets/instructor_logo1.png',
                          'priya'),
                           course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/javascript.jpeg',
                          'Jvasascript  free course',
                          'highly responsive',
                          '240 min',
                          'assets/instructor_logo1.png',
                          'priya'),
                    ],
                  ),
                ),
              Text(
                  'All course',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Divider(),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/javascript.jpeg',
                          'Jvasascript  free course',
                          'highly responsive',
                          '240 min',
                          'assets/instructor_logo1.png',
                          'priya'),
                           course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/javascript.jpeg',
                          'Jvasascript  free course',
                          'highly responsive',
                          '240 min',
                          'assets/instructor_logo1.png',
                          'priya'),
                          course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/javascript.jpeg',
                          'Jvasascript  free course',
                          'highly responsive',
                          '240 min',
                          'assets/instructor_logo1.png',
                          'priya'),
                           course_container(
                          context,
                          'assets/ilets.jpeg',
                          'ILETS/TOFEL free course',
                          'Ai generated feed back and test duration complete',
                          '140 min',
                          'assets/instructor_logo1.png',
                          'Languify'),
                      const SizedBox(
                        width: 30,
                      ),
                      course_container(
                          context,
                          'assets/python.jpeg',
                          'python',
                          'Python was a simple language',
                          '180 min',
                          'assets/instructor_logo2.png',
                          'shruthi'),
                          const SizedBox(
                        width: 30,
                      ),
                    ],
                  ),
                ),
              
              ],
            ),
          ),
        ));
  }
}
