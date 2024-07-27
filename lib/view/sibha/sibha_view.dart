import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:prayer_app/constants.dart';
import 'package:prayer_app/view/home/profile.dart';
import 'package:prayer_app/view/home/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SibhaView extends StatefulWidget {
  @override
  ChildSibhaView createState() => ChildSibhaView();
}

class ChildSibhaView extends State<SibhaView> {
  int counter = 0;
  String x = ' سبحان الله العظيم';

  Future<Map<String, String?>> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');
    final email = prefs.getString('email');

    return {
      'username': username,
      'email': email,
    };
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: EdgeInsets.only(top: 5),
            height: MediaQuery.of(context).size.height ,
            width: MediaQuery.of(context).size.width ,
          //  margin: EdgeInsets.only(left: 2, top: 5, bottom: 5, right: 2),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back ground.jpeg'),
                  fit:BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(1), color: Colors.white,),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.05,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: ()async{
                          final userData = await getUserData();
                          Get.to(Profile(username: '${userData['username']}'
                            , email: '${userData['email']}',));
                        },
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade400,
                          child: Image.asset('icons/img_1.png',width: 20,height: 20,),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 15,),
                      GestureDetector(
                        onTap: (){
                          Get.to(const Settings());
                        },
                        child: CircleAvatar(
                          radius: 20,
                          child: Image.asset('icons/img.png',width: 20,height: 20,),
                          backgroundColor: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  )
                ],
              ),),
              SizedBox(height: Get.height*.04,),

              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('images/back ground2.jpeg',
                    ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('السبحه',style: TextStyle(
                        fontSize: 30,color: Colors.white
    ),
                    ),

                    // ),),Text(' $x',style: TextStyle(
                    //     fontSize: 30,color: Colors.white,
                    //   fontWeight: FontWeight.bold
                    //
                    //
                    // ),),
                  ],
                )
                ],
              ),

              SizedBox(height: Get.height*.2,),

              Text('عدد التسبيحات',style: TextStyle(
                fontSize: 40,fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),
              Text('$counter',style: TextStyle(
                letterSpacing: 5,
                fontSize: 60,fontWeight: FontWeight.bold,
                color: buttonColor
              ),),
              SizedBox(height: Get.height*.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        zero();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: CircleBorder(),
                        fixedSize: Size.fromRadius(40)
                      ),
                      child:Icon(Icons.replay,color: Colors.white,)), ElevatedButton(
                      onPressed: (){
                        incrementCounter();
                        printer();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: buttonColor,
                        shape: CircleBorder(),
                        fixedSize: Size.fromRadius(55)
                      ),
                      child: Text('تسبيح',style: TextStyle(
                        fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold
                      ),)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
  void incrementCounter() {
    setState(() {
      counter++;
      printer();
      if (counter == 33) {
        print(Text('more'));
      }
    });
  }
  void zero() {
    setState(() {
      counter = 0;
    });
  }

  void printer() {
    setState(() {
      if (counter <= 33) {
        x = (' سبحان الله العظيم');
      } else if (counter <= 66 && counter > 33) {
        x = ('الحمد الله');
      } else if (counter <= 99 && counter > 66) {
        x = ('الله اكبر');
      }else if(counter>99){
        counter=0;
        x = (' سبحان الله العظيم');
      }
    })
    ;
  }
}
