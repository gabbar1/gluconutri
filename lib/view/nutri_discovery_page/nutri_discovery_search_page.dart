import 'package:flutter/material.dart ';
import 'package:gluconutri/view/nutri_discovery_page/all_food_list.dart';
import 'package:gluconutri/view/nutri_discovery_page/salads.dart';
import 'package:gluconutri/view/nutri_discovery_page/breakfast.dart';
import 'prime_plate.dart';
import 'desserts.dart';

class NutriDiscoverySeachPage extends StatefulWidget {
  final int initialTabIndex;
  NutriDiscoverySeachPage({required this.initialTabIndex});
  @override
  State<NutriDiscoverySeachPage> createState() => _NutriDiscoverySeachPageState();
}

class _NutriDiscoverySeachPageState extends State<NutriDiscoverySeachPage> with TickerProviderStateMixin{
  TextEditingController searchController  = TextEditingController();


  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 7, vsync: this,initialIndex: widget.initialTabIndex);
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
              leadingWidth: 10,
              title: Text("Search Items"),
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
      body: itemList(),
    );
  }
  itemList(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: const EdgeInsets.only(left: 15),
          child:Column(
            children: [
              Container(
                //color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      focusedBorder: InputBorder.none,
                      hintStyle: const TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          searchController.clear();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: const Text("Clear",style: TextStyle(color: Colors.black,fontSize: 12,decoration: TextDecoration.underline),),
                        )
                      ),
                      border: InputBorder.none,
                    ),
                   // onChanged: _onSearchTextChanged,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(right: 15.0),
          child: DefaultTabController(
            length: 7,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TabBar(
                isScrollable: true,
                controller: _controller,
                indicatorWeight:2,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                labelColor: Colors.black,
                tabs: [
                  Container(
                    //margin: EdgeInsets.only(right: 0),
                    child: Tab(
                      child: Row(
                        children: [
                          Text(
                            "All",
                            style: TextStyle(fontSize: 10),
                            overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                            softWrap: false,
                          ),
                          Text(
                            " 8",
                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(right: 0),
                    child: Tab(
                      child: Row(
                        children: [
                          Text(
                            "Prime plate",
                            style: TextStyle(fontSize: 10),
                            overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                            softWrap: false,
                          ),
                          Text(
                            " ",
                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    //margin: EdgeInsets.only(right: 0),
                    child: Tab(
                      child: Row(
                        children: [
                          Text(
                            "Breakfast",
                            style: TextStyle(fontSize: 10),
                            overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                            softWrap: false,
                          ),
                          Text(
                            " ",
                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Text(
                          "Salads",
                          style: TextStyle(fontSize: 10),
                          overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                          softWrap: false,
                        ),
                        Text(
                          " 3",
                          style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Text(
                          "Desserts",
                          style: TextStyle(fontSize: 10),
                          overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                          softWrap: false,
                        ),
                        Text(
                          " 2",
                          style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      children: [
                        Text(
                          "Snacks",
                          style: TextStyle(fontSize: 10),
                          overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                          softWrap: false,
                        ),
                        Text(
                          " 2",
                          style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Other",
                      style: TextStyle(fontSize: 10),
                      overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: [
              NutriDiscoverySearchAll(),
              NutriDiscoveryPrimePlate(),
              NutriDiscoveryBreakfast(),
              NutriDiscoverySalads(),
              NutriDiscoveryDesserts(),
              NutriDiscoveryDesserts(),
              NutriDiscoveryDesserts(),
            ],
          ),
        ),

      ],
    );
  }
 // Image(image:AssetsImage("assets/Images/nutri_discovery_food.png"))
}
