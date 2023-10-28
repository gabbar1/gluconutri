import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyMenuTodaysMenu extends StatefulWidget {
  const  MyMenuTodaysMenu({Key? key}) : super(key: key);

  @override
  State<MyMenuTodaysMenu> createState() => _MyMenuTodaysMenuState();
}

class _MyMenuTodaysMenuState extends State<MyMenuTodaysMenu> {
  bool isSelectedMonday = false;
  bool isSelectedTuesday = false;
  bool isSelectedWednesday = false;
  bool isSelectedThursday = true;
  bool isSelectedFriday = false;
  bool isSelectedSaturday = false;
  bool isSelectedSundayday = false;
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
              title: Text("Todays Menu"),
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
      body: menuList(),
    );
  }

  menuList(){
    return StatefulBuilder(
      builder: (context, setState) {
      return  Padding(padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState((){
                          isSelectedMonday = !isSelectedMonday;
                           isSelectedTuesday = false;
                           isSelectedWednesday = false;
                           isSelectedThursday = false;
                           isSelectedFriday = false;
                           isSelectedSaturday = false;
                           isSelectedSundayday = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: isSelectedMonday ? Color(0xFF651ECC) : Colors.grey.withOpacity(.2)),
                        child: Center(child:
                        Text("Mon",
                          style: isSelectedMonday ? TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) :
                          TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isSelectedTuesday = !isSelectedTuesday;
                          isSelectedMonday = false;
                          isSelectedWednesday = false;
                          isSelectedThursday = false;
                          isSelectedFriday = false;
                          isSelectedSaturday = false;
                          isSelectedSundayday = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: isSelectedTuesday ? Color(0xFF651ECC) : Colors.grey.withOpacity(.2)),
                        child: Center(child:
                        Text("Tue",
                          style: isSelectedTuesday ? TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) :
                          TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isSelectedWednesday = !isSelectedWednesday;
                          isSelectedMonday = false;
                          isSelectedTuesday = false;
                          isSelectedThursday = false;
                          isSelectedFriday = false;
                          isSelectedSaturday = false;
                          isSelectedSundayday = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: isSelectedWednesday ? Color(0xFF651ECC) : Colors.grey.withOpacity(.2)),
                        child: Center(child:
                        Text("Wed",
                          style: isSelectedWednesday ? TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) :
                          TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isSelectedThursday = !isSelectedThursday;
                          isSelectedWednesday = false;
                          isSelectedMonday = false;
                          isSelectedTuesday = false;
                          isSelectedFriday = false;
                          isSelectedSaturday = false;
                          isSelectedSundayday = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: isSelectedThursday ? Color(0xFF651ECC) : Colors.grey.withOpacity(.2)),
                        child: Center(child:
                        Text("Thu",
                          style: isSelectedThursday ? TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) :
                          TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isSelectedFriday = !isSelectedFriday;
                          isSelectedWednesday = false;
                          isSelectedMonday = false;
                          isSelectedTuesday = false;
                          isSelectedThursday = false;
                          isSelectedSaturday = false;
                          isSelectedSundayday = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: isSelectedFriday ? Color(0xFF651ECC) : Colors.grey.withOpacity(.2)),
                        child: Center(child:
                        Text("Fri",
                          style: isSelectedFriday ? TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) :
                          TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isSelectedSaturday = !isSelectedSaturday;
                          isSelectedWednesday = false;
                          isSelectedMonday = false;
                          isSelectedTuesday = false;
                          isSelectedThursday = false;
                          isSelectedFriday = false;
                          isSelectedSundayday = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: isSelectedSaturday ? Color(0xFF651ECC) : Colors.grey.withOpacity(.2)),
                        child: Center(child:
                        Text("Sat",
                          style: isSelectedSaturday ? TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) :
                          TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState((){
                          isSelectedSundayday = !isSelectedSundayday;
                          isSelectedWednesday = false;
                          isSelectedMonday = false;
                          isSelectedTuesday = false;
                          isSelectedThursday = false;
                          isSelectedFriday = false;
                          isSelectedSaturday = false;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            color: isSelectedSundayday ? Color(0xFF651ECC) : Colors.grey.withOpacity(.2)),
                        child: Center(child:
                        Text("Sun",
                          style: isSelectedSundayday ? TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700) :
                          TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w700),),),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Thursday Menu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Image(image: AssetImage("assets/Images/compas.png"),height: 20,)
                  ],
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 200,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Breakfast",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            Text("240kcal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF651ECC)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8,15,8,3),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Scrambled eggs with avocado and whole \ngrain toast for the breakfast",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                                      const SizedBox(height: 5,),
                                      Text("240kcal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),)
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(image: AssetImage("assets/Images/bread.png"),height: 30,),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Divider(height: 2,color: Colors.white,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white
                                  ),
                                  child: Center(
                                    child:Text("Edit Menu"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 200,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Lunch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            Text("440kcal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF4068FF)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8,15,8,3),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Baked salmon with potatos Mixed green\nsalad with olive oil and lemon dressing ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                                      const SizedBox(height: 5,),
                                      Text("440kcal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),)
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(image: AssetImage("assets/Images/biscuit.png"),height: 30,),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Divider(height: 2,color: Colors.white,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white
                                  ),
                                  child: Center(
                                    child:Text("Edit Menu"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 200,
                  color: Colors.grey.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Your Dinner",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                            Text("310kcal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF6FBA0E)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8,15,8,3),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Baked turkey meatballs with brown rice\nand tomato salad.",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
                                      const SizedBox(height: 5,),
                                      Text("310kcal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),)
                                    ],
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image(image: AssetImage("assets/Images/egg.png"),height: 30,),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Divider(height: 2,color: Colors.white,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white
                                  ),
                                  child: Center(
                                    child:Text("Edit Menu"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );},
    );

  }
}
