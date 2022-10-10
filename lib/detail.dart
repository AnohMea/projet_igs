import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dateil extends StatelessWidget {
  const Dateil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: CustomScrollView(
        
        slivers: [
        
          SliverAppBar(
            title: Row(
              
              children: const [
                SizedBox(width: 290,),
                Icon(FontAwesomeIcons.heart)
              ],
            ),
            backgroundColor: Colors.grey,
            expandedHeight: 300,
            shape: const RoundedRectangleBorder(
            borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(40))),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/fteuilVert.png',
                
                fit: BoxFit.cover,width: 50,
              ),
            ),
          ),
         Positioned(
          
          top: 20,
           child: SliverToBoxAdapter(
         
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Ramni chair',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold ),),
                SizedBox(width: 2,),
                Icon(Icons.star_border_outlined,color: Colors.red,),
                SizedBox(width: 12,),
                Text("4.5",style: TextStyle(fontWeight: FontWeight.bold ),),
                SizedBox(width: 150,),
                Text('\$1700',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
              ],
            ),
            
           ),
         ),
         Container(
           child: Row(
             children: const [
               Tab(text: 'Description',)
             ],
           ),
         )
        ],
        
      ),
    );
  }
}
