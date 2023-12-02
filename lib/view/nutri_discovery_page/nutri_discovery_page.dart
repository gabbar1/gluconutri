import 'package:flutter/material.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_categories.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_favorites.dart';

class NutriDiscoveryPage extends StatefulWidget {


  @override
  State<NutriDiscoveryPage> createState() => _NutriDiscoveryPageState();
}

class _NutriDiscoveryPageState extends State<NutriDiscoveryPage> with TickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this);
    _controller.addListener(() {
      setState(() {
      });});
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: AppBar(
            backgroundColor: Color(0xFF651ECC),
            leading: SizedBox(),
            title: Text("My Foodie Discovery"),
            actions: [Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: InkWell(
                  onTap:(){
                    Navigator.pop(context); 
                  },child: Icon(Icons.clear)),
            )]
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          TabBar(
            controller: _controller,
            indicatorWeight:.1,
            indicatorSize: TabBarIndicatorSize.label,
            unselectedLabelColor: Colors.black12,
            labelColor: Colors.black,
            tabs: const[
              Text("Categories"),
              Text("Favorites"),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const [
                NutriDiscoveryCategories(),
                NutriDiscoveryFavorites()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
