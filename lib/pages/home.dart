//statless and stateful widges
//stateless cannont change the state of the widget during th run time of the app
//statefull widgets can change their state during the runtime of their app

import 'package:flutter/material.dart';

import 'package:flutter_app_2/models/category_model.dart';
import 'package:flutter_app_2/models/diet_model.dart';
import 'package:flutter_app_2/models/popular_modal.dart';
import 'package:flutter_svg/flutter_svg.dart' show SvgPicture;
import 'package:lucide_icons_flutter/lucide_icons.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 List<CategoryModel> categories = [];
 List<DietModel> diets = [];
 List<PopularDietsModel> popularDiets =[];

void _getInitialInfo(){
  categories = CategoryModel.getCategories();
  diets = DietModel.getDiets();
  popularDiets = PopularDietsModel.getPopularDiets();
}

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: appbar(),
      backgroundColor: Colors.white,
      body: ListView(

        children: [
          search(),
          SizedBox(height: 40,),
          _categoriesSection(),
          SizedBox(height: 40,),
          dietSection(),
          SizedBox(height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  
                  'Popular',
                  style: TextStyle(
                    
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              ListView.separated(
                itemCount: popularDiets.length,
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: 25,),
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),

                itemBuilder: (context, index){
                  return Container(
                height: 100,
                decoration: BoxDecoration(
                  
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                BoxShadow(
                color: Colors.black.withValues(alpha: 0.6),
                 offset: Offset(0, 10),
                  blurRadius: 10,
                   spreadRadius: 0
          ),
         ]
        ),
        
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            SvgPicture.asset(
              popularDiets[index].iconPath,
              width: 90,
              height: 90,
              ),
            
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    
                    popularDiets[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '${popularDiets[index].level} | ${popularDiets[index].duration} | ${popularDiets[index].calorie}',
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
              IconButton(
              onPressed: () {
       
              },
            icon: const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Colors.grey,
            size: 20,
           ),
          ),
                  ],

                 ),
                 
                );
                }
              ) 
            ],
          ),
          SizedBox(height: 40,),
        ],
      ),
    

); //Basic material design layout of the application, eg taskbar, bottombar, topbar sidebar etc
      
  }

  Column dietSection() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Recomendation \n for Diet',
                style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              color: Colors.white,
              height: 240,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    width: 210,
                    decoration: BoxDecoration(
                      color: diets[index].boxColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(diets[index].iconPath,
                        height: 130,
                        width: 100,
                        ),
                        Text(
                          diets[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '${diets[index].level} | ${diets[index].duration} | ${diets[index].calorie}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),

                        ),
                         Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors:[
                                Color.fromARGB(255, 255, 149, 0),
                                Color.fromARGB(255, 255, 225, 0)
                              ]
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                          child: Center(
                            
                            child: Text(
                              
                              'View',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }, 
                separatorBuilder: (context, index) => SizedBox(width: 25,),
                itemCount: diets.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
              ),
            )
          ],
        );
  }

  Column _categoriesSection() {
    return Column(
          children: [
            Padding( 
            padding: const EdgeInsets.only(left:20),
            child: Text(
              'Category',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),

            ),
            SizedBox(height: 15,),
            Container(
              height: 120,
             
              color: Colors.white,
              child: ListView.separated(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                separatorBuilder: (context, index) => SizedBox(width: 25,),
                itemBuilder: (context, index){
                  return Container(

                    width: 100,
                    decoration: BoxDecoration(
                      color: categories[index].boxColor.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(categories[index].iconPath
                             
                            ),
                          ) ,
                          
                        ),
                        Text(
                            categories[index].name,
                            style: TextStyle(
                              fontWeight:  FontWeight.w400,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                         
                      ],
                    ),
                  );
                }
              ),
            )
          ],
        );
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
      

      leading: Container(
  margin: const EdgeInsets.all(10),
  decoration: BoxDecoration(
    color: const Color(0xffF7F8F8),
    borderRadius: BorderRadius.circular(10),
  ),
  child: IconButton(
    padding: EdgeInsets.zero, // Removes default padding to fit your small box
    icon: const Icon(
      LucideIcons.arrowLeft, // Using the Lucide icon!
      color: Colors.black,
      size: 20,
    ),
    onPressed: () {
      // Add what happens when tapped here
    },
  ),
),
     
      
     //The filter icon starts here
      actions:[
  Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: const Color(0xffF7F8F8),
      borderRadius: BorderRadius.circular(10),
    ),
    width: 37,
    child: IconButton(
      padding: EdgeInsets.zero,
      icon: const Icon(
        LucideIcons.moreHorizontal, // The Lucide equivalent of your dots.png
        color: Colors.black,
        size: 20,
      ),
      onPressed: () {
        // Add what happens when tapped here
      },
    ),
  ),
],


  //ends here  
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
              
              suffixIcon: SizedBox(
                
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