import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../Model/chatcardmodel.dart';

class IndividualPage extends StatefulWidget {
  late ChatCardModel cy;
   IndividualPage({required this.cy});

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  Widget emojipicker(){
    return EmojiPicker(
        onEmojiSelected:(emoji,category){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leadingWidth:98,
          titleSpacing:0.5,


          backgroundColor:Color(0xFF075E54),
          leading:Row(
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              },
                  icon: Icon(
                    Icons.arrow_back,size: 24,
                  )),
              CircleAvatar(
                radius:25,
                child:SvgPicture.asset(widget.cy.ISGROUP? 'assest/groups.svg':'assest/person.svg',color:Colors.white,
                height:30,width:30,
                ),
                backgroundColor:Colors.grey,
              )
            ],
          ),
          title:Container(
            margin:EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text(widget.cy.name,style:TextStyle(fontSize:18,fontWeight:FontWeight.bold),),
                Text('last seen at ${widget.cy.time}',style:TextStyle(fontSize:13))

              ],
            ),
          ),
          actions: [
            IconButton(onPressed: (){
            },
                icon: Icon(
                  Icons.video_call_outlined,size: 24,
                )),
            IconButton(onPressed: (){
            },
                icon: Icon(
                  Icons.call,size: 24,
                )),
            PopupMenuButton(itemBuilder: (context){
              return[
                PopupMenuItem(child:Text('New Group'),value: 'New Group'),
                PopupMenuItem(child:Text('New Broadcast'),value: 'New Broadcast'),
                PopupMenuItem(child:Text('Whatsapp Web'),value: 'Whatsapp Web',),
                PopupMenuItem(child:Text('Stared message'),value: 'Stared message',),
                PopupMenuItem(child:Text('Settings'),value: 'Settings',),
              ];
            }),
          ],
        ),
      ),
      body:Container(
        height:MediaQuery.of(context).size.height,
        width:MediaQuery.of(context).size.width,
        child:Stack(
          children: [
            ListView(),
            Align(
              alignment:Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width:MediaQuery.of(context).size.width-65,
                      child: Card(
                        margin:EdgeInsets.only(left:5,right: 2,bottom:8),
                        shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(15.0)
                        ),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines:5,
                      minLines:1 ,

                      textAlignVertical:TextAlignVertical.center,
                      decoration:InputDecoration(
                        contentPadding:EdgeInsets.all(5),
                        border:InputBorder.none,
                        hintText:'Type your message ',
                        prefixIcon:IconButton(onPressed:(){
                          emojipicker();
                        }, icon: Icon(
                          Icons.emoji_emotions
                        )
                        ),
                        suffixIcon:Row(
                          mainAxisSize:MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed:(){}, icon: Icon(Icons.attach_file)),
                            IconButton(
                                onPressed:(){}, icon: Icon(Icons.camera_alt_outlined)),

                          ],
                        )
                      ),
                    )
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:2,right:2,bottom:8),
                    child: CircleAvatar(
                      backgroundColor:Color(0xFF075E54),
                      radius:25,
                      child:IconButton(
                        onPressed:(){},
                        icon: Icon(
                          Icons.mic
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
