import 'package:flutter/material.dart';
import '../ChatClass/CustumCard.dart';
import 'package:whatsappclone/Model/chatcardmodel.dart';


class Chatwidget extends StatefulWidget {
  const Chatwidget({super.key});

  @override
  State<Chatwidget> createState() => _ChatwidgetState();
}

class _ChatwidgetState extends State<Chatwidget> {
  List<ChatCardModel> charlist=[

    ChatCardModel(name:'onyeka',message:'you are not alone',ISGROUP:false,time: '10:00'),
    ChatCardModel(name:'levi',message:'yessss',ISGROUP: false,time: '06:04'),
    ChatCardModel(name:'okwor',message:'maybe ',ISGROUP: false,time: '04:30'),
    ChatCardModel(name:'kachi s group',message:'hi everyone ',ISGROUP:true,time: '04:86'),
    ChatCardModel(name:'philip',message:'how are you doing',ISGROUP:false,time: '05:00'),
    ChatCardModel(name:'music group',message:'hi everyone ',ISGROUP:true,time: '07:86'),
    ChatCardModel(name:'Rita',message:'how far',ISGROUP: false,time: '06:04'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:ListView.builder(
        itemCount:charlist.length,
          itemBuilder:(context ,index){
          return CustumeCard(cy:charlist[index] ,);
          }),
      floatingActionButton:FloatingActionButton(
        onPressed:(){},
        child:Icon(
          Icons.chat_bubble_outline
        ),

      ),
    );
  }
}
