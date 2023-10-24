import 'package:flutter/material.dart';
import 'package:gluconutri/ui/details/detail_page.dart';
import 'package:gluconutri/ui/utility//theme.dart' as Style;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';

class MoviesPager extends StatefulWidget {
  const MoviesPager({Key? key}) : super(key: key);
  @override
  _NowPlayingState createState() => _NowPlayingState();
}

List imagesArray = [
  "assets/Images/g.png",
  "assets/Images/prasad.jpg",
  "assets/Images/a.png",
  "assets/Images/b.png",
  "assets/Images/c.png",
  "assets/Images/d.png",
  "assets/Images/e.png"
];
List titleArray = [
  "Top News 1",
  "Top News 2",
  "Top News 3",
  "Top News 4",
  "Top News 5",
  "Top News 6",
  "Top News 7"
];

class _NowPlayingState extends State<MoviesPager> {
  PageController pageController =
      PageController(viewportFraction: 1, keepPage: true);

  @override
  void initState() {
    super.initState();
    //moviesBloc..getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return _buildHomeWidget();
  }

  Widget _buildHomeWidget() {
    return Container(
      height: 220.0,
      child: PageIndicatorContainer(
        align: IndicatorAlign.bottom,
        length: imagesArray.length,
        indicatorSpace: 8.0,
        padding: const EdgeInsets.all(5.0),
        indicatorColor: Style.Colors.titleColor,
        indicatorSelectorColor: Style.Colors.secondColor,
        shape: IndicatorShape.circle(size: 5.0),
        child: PageView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: imagesArray.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailScreen(imagesArray[index])));
                //Navigator.of(context).pushNamed('/ArticleView', arguments: articles[0]);
              },
              child: Stack(
                children: <Widget>[
                  Hero(
                    tag: titleArray[index],
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 220.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(imagesArray[index])),
                        )),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: [
                            0.0,
                            0.9
                          ],
                          colors: [
                            Style.Colors.mainColor.withOpacity(1.0),
                            Style.Colors.mainColor.withOpacity(0.0)
                          ]),
                    ),
                  ),
                  Positioned(
                      bottom: 0.0,
                      top: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Icon(
                        FontAwesomeIcons.playCircle,
                        color: Style.Colors.secondColor,
                        size: 40.0,
                      )),
                  Positioned(
                      bottom: 30.0,
                      child: Container(
                        padding: EdgeInsets.only(left: 10.0, right: 10.0),
                        width: 250.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              titleArray[index],
                              style: TextStyle(
                                  height: 1.5,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
