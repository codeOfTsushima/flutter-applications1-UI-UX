//statless and stateful widges
//stateless cannont change the state of the widget during th run time of the app
//statefull widgets can change their state during the runtime of their app

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
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
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset('assets/icons/search.svg'),
                ),
                suffixIcon: SvgPicture.asset('assets/icons/filter.svg'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
              ),
            ),
          )
        ],
      ),
    appBar: AppBar(
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
      
  ),

); //Basic material design layout of the application, eg taskbar, bottombar, topbar sidebar etc
      
  }
}