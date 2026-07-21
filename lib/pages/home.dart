//statless and stateful widges
//stateless cannont change the state of the widget during th run time of the app
//statefull widgets can change their state during the runtime of their app

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          search(),
          SizedBox(height: 40,),
          Column(
            children: [
              Padding( 
              padding: const EdgeInsets.only(left:20),
              child: Text(
                'Category',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),

              ),
              SizedBox(height: 15,),
              Container(
                height: 150,
                color: Colors.green,
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return Container();
                  }
                ),
              )
            ],
          )
        ],
      ),
    

); //Basic material design layout of the application, eg taskbar, bottombar, topbar sidebar etc
      
  }

  AppBar appbar() {
    return AppBar(
    title: Text(
      'Breakfast',
      style: TextStyle(
        color:Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        ),
      ),
      
      elevation:0,
      backgroundColor: Colors.white,
      centerTitle: true,
      
      leading: GestureDetector( 
        onTap: (){


        },

      child:Container(
        
        decoration: BoxDecoration(
          color: Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10)
        ),
        
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
      
        child: Image.asset(
          'assets/icons/left-arrow.png',
          height: 20,
          width: 20,
          ) ,
     
      ),
     
     ),
     
      actions: [
        GestureDetector(
          onTap: (){
            
          },
         child:Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffF7F8F8),
          borderRadius: BorderRadius.circular(10)

        ),
        alignment: Alignment.center,
        width: 37,

        child: Image.asset(
          'assets/icons/dots.png',
          height: 20,
          width: 20,
          ) ,
      ),
    ),
  ],
    
);
  }

  Container search() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withValues(alpha: 0.11),
                blurRadius: 40,
                spreadRadius: 0.01
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              
              hintText: 'Masala Dosa',
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                
              ),
              
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset('assets/icons/search.svg'),
              ),
              suffixIcon: Container(
                width: 100,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 0.1,
                        endIndent: 10,
                        indent: 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset('assets/icons/filter.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              )
            ),
          ),
        );
  }
}