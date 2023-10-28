import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gluconutri/view/gluco_nutri_page/contoller/dietitian_controller.dart';
import 'package:gluconutri/view/gluco_nutri_page/gluco_nutri_book_appointment.dart';


class GlucoNutriPage extends StatefulWidget {
  const GlucoNutriPage({Key? key}) : super(key: key);

  @override
  State<GlucoNutriPage> createState() => _GlucoNutriPageState();
}

class _GlucoNutriPageState extends State<GlucoNutriPage> {

  DietitianController dietitianController = Get.put(DietitianController());
  @override
  void initState() {
    // TODO: implement initState
    dietitianController.fetchTopDietitians();
    dietitianController.fetchRecommendedDietitians();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: AppBar(
            backgroundColor: Color(0xFF651ECC),

            leading:Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image(image: AssetImage("assets/Images/back.png"),)),
            ),
            title: Text("GLUCONUTRI"),
          ),
        ),
      ),
      body: dietitiansList(),
    );
  }
  dietitiansList(){
    return Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Top Dietitians",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        const SizedBox(height: 10,),
        SizedBox(
          height: 130,
          child: Obx(()=>ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:dietitianController.getTopDietitianList.length ,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BookAppointment(topDietitianModel: dietitianController.getTopDietitianList[index])));
                    },
                    child: Column(
                      children: [
                        Image(image: NetworkImage(dietitianController.getTopDietitianList[index].image!),
                          height: 80,
                          width: 80,
                        ),
                        Text(dietitianController.getTopDietitianList[index].name!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text(dietitianController.getTopDietitianList[index].designation!,style: TextStyle(fontWeight: FontWeight.w200,fontSize: 12),)
                      ],
                    ),
                  ),
                );
              })),
        ),
        const SizedBox(height: 10,),
        const Text("Recommended Dietitians",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
        const SizedBox(height: 10,),
        Expanded(
          child: Obx(()=>GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 2,crossAxisCount: 2,crossAxisSpacing: 5,mainAxisSpacing: 15,),
            itemCount: dietitianController.getRecommendedList.length,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BookAppointment(topDietitianModel: dietitianController.getRecommendedList[index])));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Card(
                    elevation: 1,
                    child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width/2.3,
                        //height: 80,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: NetworkImage(dietitianController.getRecommendedList[index].image!)),
                            const SizedBox(width: 5,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20,),
                                Text(dietitianController.getRecommendedList[index].name!,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                                const SizedBox(height: 2,),
                                Text(dietitianController.getRecommendedList[index].designation!,style: TextStyle(fontWeight: FontWeight.w300,fontSize: 8),),
                                const SizedBox(height: 2,),
                                Row(children: [Text("7.2 Years",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 8),),Text("(Experience)",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 8),)],),
                                const SizedBox(height: 2,),
                                Row(children: [Image(image: AssetImage("assets/Images/star.png"),height: 10,width: 10,),Text("4.0",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold),),Text("(192 Review)",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 8),)],)
                              ],
                            )
                          ],
                        )
                    ),
                  ),
                ),
              );
            },
          )),
        )
      ],
    ),
    );
  }
}
/*,*/