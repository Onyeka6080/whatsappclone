import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsappclone/Model/chatcardmodel.dart';

import '../Home/IndividualPage.dart';

class CustumeCard extends StatelessWidget {
   late ChatCardModel cy;
   CustumeCard({required this.cy});



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return IndividualPage(cy:cy);
        }));

      },
      child: Column(
        children: [
          ListTile(
            leading:CircleAvatar(
              radius:30,
              backgroundColor:Colors.grey,
              child:SvgPicture.asset(cy.ISGROUP? 'assest/groups.svg':'assest/person.svg',color:Colors.white,
             width: 37,height:37,
              ),
            ),
            title:Text(cy.name),
            subtitle:Row(
              children: [
                Icon(
                  Icons.done_all
                ),
                SizedBox(width:10,),
                Text(cy.message),
              ],
            ),
            trailing:Text(cy.time),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80,right: 20),
            child: Divider(height:10,thickness:2.0,
            ),
          )
        ],
      ),
    );
  }
}
