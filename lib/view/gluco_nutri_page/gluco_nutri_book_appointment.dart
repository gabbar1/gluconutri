import 'package:flutter/material.dart';
import 'package:gluconutri/view/gluco_nutri_page/model/top_dietitian_model.dart';

class BookAppointment extends StatefulWidget {
   BookAppointment({this.topDietitianModel}) ;
   TopDietitianModel? topDietitianModel;
  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
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
            leading:Padding(
              padding: const EdgeInsets.only(left:30.0),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image(image: AssetImage("assets/Images/back.png"),)),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Book An Appointment"),
                Text("Pick the date and the time the appointment",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w100),)
              ],
            ),
          ),
        ),
      ),
      body: bookAppointment(),
    );
  }

  bookAppointment(){
    return Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 30),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(1, 1,), // changes the position of the shadow
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Card(
                elevation: 1,
                child: Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    //height: 80,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Image(image: NetworkImage(widget.topDietitianModel!.image!)),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                             Text(widget.topDietitianModel!.name!,style: TextStyle(fontWeight: FontWeight.bold),),
                             Text(widget.topDietitianModel!.designation!,style: TextStyle(fontWeight: FontWeight.w300),),
                            Row(children: [Text("7.2 Years",style: TextStyle(fontWeight: FontWeight.bold),),Text("(Experience)",style: TextStyle(fontWeight: FontWeight.w300),)],),
                            Row(children: [Image(image: AssetImage("assets/Images/star.png"),height: 20,width: 20,),Text("4.0",style: TextStyle(fontWeight: FontWeight.bold),),Text("(192 Review)",style: TextStyle(fontWeight: FontWeight.w300),)],)

                          ],
                        )
                      ],
                    )
                ),
              ),
            ),
          ),
         //ElevatedButton(onPressed: (){_selectDate(context);}, child: Text("pick Date")),
          SizedBox(height: 300,),
          Text("These Times are available"),
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(.3)),
                child: Center(
                  child: Text("10:30 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
              Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(.3)),
                child: Center(
                  child: Text("11:30 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFF651ECC)),
                child: Center(
                  child: Text("05:30 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
                ),
              ),
              Container(
                height: 50,
                width: 140,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(.3)),
                child: Center(
                  child: Text("07:30 AM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFF651ECC)),
              child: Center(child: Text("BOOK THIS SLOT",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
            ),
          )
        ],
      ),
    ),
    );
  }
}
