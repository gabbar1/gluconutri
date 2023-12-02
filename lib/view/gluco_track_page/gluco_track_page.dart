import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gluconutri/view/gluco_nutri_page/gluco_nutri_page.dart';
import 'package:gluconutri/view/nutri_discovery_page/controller/add_calory_controller.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_categories.dart';
import 'package:gluconutri/view/nutri_discovery_page/nutri_discovery_page.dart';
import 'package:pie_chart/pie_chart.dart';


class GlucoTrackPage extends StatefulWidget {
  GlucoTrackPage({Key? key,this.rout}) : super(key: key);
  bool? rout =false;
  @override
  State<GlucoTrackPage> createState() => _GlucoTrackPageState();
}

class _GlucoTrackPageState extends State<GlucoTrackPage> {

  Map<String, double> dataMap = {
    "Carbohydrates": 50,
    "Protein": 20,
    "Fat": 10,

  };

  AddCalory addCalory = Get.find();
  @override
  void initState() {
    // TODO: implement initState
    addCalory.getTracking();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.rout == true ?PreferredSize(
        preferredSize:const  Size.fromHeight(80),
        child: ClipRRect(
          borderRadius:const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: AppBar(
            backgroundColor:const Color(0xFF651ECC),
            leading:Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Image(image: AssetImage("assets/Images/back.png"),)),
            ),
            title:const Text("GLUCOTRACK"),
          ),
        ),
      ):null,
      body: glucoTrack(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          addCalory.setIsAdd = true;
          Navigator.push(context, MaterialPageRoute(builder: (context) => NutriDiscoveryPage(),));
        },
        child: Icon(Icons.add),
      ),
    );
  }
  glucoTrack(){
    return Padding(padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
      child: Column(
        children: [
          _changeTodyHighlightColorExample(),
          const SizedBox(height: 20,),
          Obx((){
            if(addCalory.getCombinedData.isEmpty){
              return SizedBox();
            }else{
              return Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    color:const Color(0xFFF2F9FA)),
                child: AspectRatio(aspectRatio: 16/9,
                    child: PieChart(
                      dataMap: addCalory.getCombinedData,
                      animationDuration: const Duration(milliseconds: 800),
                      chartLegendSpacing: 30,
                      chartRadius: MediaQuery.of(context).size.width / 2,
                      //colorList: colorList,
                      initialAngleInDegree: 30,
                      chartType: ChartType.ring,
                      ringStrokeWidth: 10,
                      centerText: '${addCalory.getTotalCal} kcal',
                      legendOptions:const LegendOptions(
                        showLegendsInRow: false,
                        legendPosition: LegendPosition.right,
                        showLegends: true,
                        legendShape:BoxShape.rectangle,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      chartValuesOptions: ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: false,
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: true,
                        decimalPlaces: 0,
                      ),
                    )
                ),
              );
            }
          }),
         Obx((){
           return  SizedBox(
               height: MediaQuery.sizeOf(context).height/2,
               child: ListView.builder(
                 itemCount: addCalory.getTrackingList.length,
                 itemBuilder: (context, index) {
                   return Padding(padding: EdgeInsets.all(10),child: Container(
                     padding: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.blueAccent.withOpacity(0.2)
                     ),
                     child: Row(children: [
                       if(addCalory.getTrackingList[index].image!=null)
                         Image.network(addCalory.getTrackingList[index].image!,height: 50,width: 50,),
                       SizedBox(width: 10,),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           if(addCalory.getTrackingList[index].name!=null)
                             Text(addCalory.getTrackingList[index].name!),
                           Row(children: [
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(addCalory.getTrackingList[index].carbohydrates.toString(),style: TextStyle(color: Color(0xFF651ECC)),),
                                 Text("Carbohydrates",style: TextStyle(color: Color(0xFF651ECC)),),
                               ],
                             ),
                             SizedBox(width: 5,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(addCalory.getTrackingList[index].protein.toString(),style: TextStyle(color: Colors.blueAccent),),
                                 Text("Protein",style: TextStyle(color: Colors.blueAccent),),
                               ],
                             ),
                             SizedBox(width: 5,),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(addCalory.getTrackingList[index].fat.toString(),style: TextStyle(color: Colors.orange),),
                                 Text("Fat",style: TextStyle(color: Colors.orange),),
                               ],
                             ),
                           ],)
                         ],)
                     ],),
                   ),);
                 },));
         })
        ],
      ),
    );
  }
  EasyDateTimeLine _changeTodyHighlightColorExample() {
    return EasyDateTimeLine(
      headerProps: EasyHeaderProps(showHeader: false,

      ),

      initialDate: DateTime.now(),
      onDateChange: (selectedDate) {
        addCalory.combinedData.clear();
        addCalory.setCurrentSelectedDate = selectedDate;
        print(addCalory.getCurrentSelectedDate);
        addCalory.getTracking();
        //selectedDate the new date selected.
      },
      activeColor: const Color(0xFF651ECC),

      dayProps:  EasyDayProps(
        todayHighlightStyle: TodayHighlightStyle.withBackground,
        todayHighlightColor: const Color(0xFF651ECC).withOpacity(.1),
      ),
    );
  }

}