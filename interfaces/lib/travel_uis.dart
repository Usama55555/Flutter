import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';


class Travel extends StatefulWidget {
  const Travel({super.key});

  @override
  State<Travel> createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text('Travel App UIs'),backgroundColor: Colors.deepOrangeAccent,),
      body: PageView(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://images.pexels.com/photos/6642124/pexels-photo-6642124.jpeg?auto=compress&cs=tinysrgb&w=600'), fit: BoxFit.cover)),
              ),
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.black.withOpacity(0.2),
              ),
              ListView(
                children: <Widget>[
                  const SizedBox(height: 100.0),
                  Text("Discover Nepal".toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24.0, color: Colors.white)),
                  const Text("Heaven is myth. Nepal is real.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Material(
                      elevation: 5.0,
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Top Rated".toUpperCase()),
                            const Text("Sort by price"),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Container(
                              margin: const EdgeInsets.all(10.0),
                              height: 200,
                              child: Swiper.children(
                                autoplay: true,
                                loop: true,
                                pagination: const SwiperPagination(
                                  margin: EdgeInsets.only(
                                    right: 25.0,
                                  ),
                                  builder: DotSwiperPaginationBuilder(
                                      color: Colors.grey),
                                ),
                                control: const SwiperControl(
                                  iconNext: Icons.arrow_forward_ios,
                                  iconPrevious: Icons.arrow_back_ios,
                                ),
                                children: <Widget>[
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 50.0, bottom: 20.0),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5.0),
                                          child: Image(fit: BoxFit.cover, image: NetworkImage('https://images.pexels.com/photos/14989389/pexels-photo-14989389/free-photo-of-landscape-photography-of-phewa-lake.jpeg?auto=compress&cs=tinysrgb&w=600',
                                              )),)),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 50.0, bottom: 20.0),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5.0),
                                          child: Image(fit: BoxFit.cover, image: NetworkImage('https://images.pexels.com/photos/2104882/pexels-photo-2104882.jpeg?auto=compress&cs=tinysrgb&w=600',
                                          )),)),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 50.0, bottom: 20.0),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5.0),
                                          child: Image(fit: BoxFit.cover, image: NetworkImage('https://images.pexels.com/photos/6106518/pexels-photo-6106518.jpeg?auto=compress&cs=tinysrgb&w=600',
                                          )),)),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 50.0, bottom: 20.0),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5.0),
                                          child: Image(fit: BoxFit.cover, image: NetworkImage('https://images.pexels.com/photos/248195/pexels-photo-248195.jpeg?auto=compress&cs=tinysrgb&w=600',
                                          )),)),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          right: 50.0, bottom: 20.0),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(5.0),
                                          child: Image(fit: BoxFit.cover, image: NetworkImage('https://images.pexels.com/photos/11806577/pexels-photo-11806577.jpeg?auto=compress&cs=tinysrgb&w=600',
                                          )),)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Frequently Searched".toUpperCase()),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Wrap(
                          runAlignment: WrapAlignment.center,
                          alignment: WrapAlignment.center,
                          spacing: 5.0,
                          children: <Widget>[
                            Chip(
                              backgroundColor: Colors.red,
                              label: Text("Pokhara".toUpperCase(),
                                  style: const TextStyle(color: Colors.white)),
                            ),
                            Chip(
                              label: Text("Everest base camp".toUpperCase()),
                            ),
                            Chip(
                              label: Text("Lumbini".toUpperCase()),
                            ),
                            Chip(
                              label: Text("Annapurna".toUpperCase()),
                            ),
                            Chip(
                              label: Text("Kathmandu".toUpperCase()),
                            ),
                            Chip(
                              label: Text("10+".toUpperCase()),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
