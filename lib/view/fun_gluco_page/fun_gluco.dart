import 'package:flutter/material.dart';

class FunGlucoPage extends StatefulWidget {
   FunGlucoPage({Key? key,this.rout}) : super(key: key);
   bool? rout =false;
  @override
  State<FunGlucoPage> createState() => _FunGlucoPageState();
}

class _FunGlucoPageState extends State<FunGlucoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.rout == true ?AppBar(
        elevation: 0,

      ):null,
      body: funGluco(),
    );
  }
  funGluco(){
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFF651ECC),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Trivia",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          const Text("Play trivia everyday",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                          const SizedBox(height: 10,),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Start',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                                const SizedBox(width: 5,),
                                Icon(Icons.play_circle,color: Colors.black,size: 25,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                      Image(image: AssetImage("assets/Images/fun_gluco1.png"),height: 145,)
                  ],),
                ),
              ),
              Positioned(
                  right: 8,
                  top: 10,
                  child: Image(image: AssetImage("assets/Images/question.png"),height: 80,))
            ],
          ),
          const SizedBox(height: 20,),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Container(
                  height: 160,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: const Color(0xFF4977E3),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0,left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Puzzle",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          const Text("Play puzzle games",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400),),
                          const SizedBox(height: 10,),
                          Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Start',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),),
                                const SizedBox(width: 5,),
                                Icon(Icons.play_circle,color: Colors.black,size: 25,),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                      Image(image: AssetImage("assets/Images/fungluco2.png"),height: 130,)
                  ],),
                ),
              ),
              Positioned(
                  right: 8,
                  top: 30,
                  child: Image(image: AssetImage("assets/Images/msg.png"),height: 50,)),
              Positioned(
                  right: 70,
                  child: Image(image: AssetImage("assets/Images/chat.png"),height: 50,)),
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 320,
                width: MediaQuery.of(context).size.width/2.5,
                decoration: BoxDecoration(
                    color: const Color(0xFFA1D262),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(image: AssetImage("assets/Images/fungluco3.png")),
                      const SizedBox(height: 10,),
                      const Text("Health Cooking",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 5,),
                      const Text("A place where you learn healthy cooking with accurate levels of daily needs of carbs,fat,etc",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                      const SizedBox(height: 15,),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Start',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                            const SizedBox(width: 5,),
                            Icon(Icons.play_circle,color: Colors.black,size: 20,),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 320,
                width: MediaQuery.of(context).size.width/2.5,
                decoration: BoxDecoration(
                    color: const Color(0xFFEDC641),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 13,),
                    Image(image: AssetImage("assets/Images/fungluco4.png")),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //const SizedBox(height: 5,),
                          const Text("Blood Sugar Control",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                          const SizedBox(height: 5,),
                          const Text("Keep upto date your blood sugar level and control it.",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w300),),
                          const SizedBox(height: 45,),
                          Container(
                            height: 30,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Start',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                                const SizedBox(width: 5,),
                                Icon(Icons.play_circle,color: Colors.black,size: 20,),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
