import 'package:flutter/material.dart';

import '../ChatsWidget/chatwidget.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin  {
  late TabController _controller ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =TabController(length: 4,initialIndex:1, vsync:this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar:AppBar(
        backgroundColor:Color(0xFF075E54),
        title:Text('Whatsapp Clone check',
        style:TextStyle(
          fontSize:18,
          fontFamily:'OpenSans',
        ),),
        actions: [
          IconButton(onPressed:(){},
              icon: Icon(
                Icons.search
              ),
          ),
          PopupMenuButton<String>(
              onSelected:(v){
                print(v);
              },
              itemBuilder:(BuildContext index){
            return[
              PopupMenuItem(child: Text('New Group'),value:'New Group' ,),
              PopupMenuItem(child: Text('New broadcast'),value: 'New broadcast',),
              PopupMenuItem(child: Text('Whatapp Web'),value:'Whatapp Web' ,),
              PopupMenuItem(child: Text('Stared message'),value: 'Stared message',),
              PopupMenuItem(child: Text('Settings'),value:'Settings'),
            ];
          }

          ),
        ],
        bottom:TabBar(
          indicatorColor:Colors.white,
          indicatorWeight:3.0,
          controller:_controller ,
            tabs:[
              Tab(icon:Icon(Icons.camera_alt_outlined),),
              Tab(child:Text('CHATS',style:TextStyle(
                  fontFamily:'OpenSans', ),),),
              Tab(child:Text('STATUS'),),
              Tab(child:Text('CALLS'),),
            ]),
      ),
      body:TabBarView(
        controller:_controller ,
        children: [
          Text('camera'),
          Chatwidget(),
          Text('status'),
          Text('calls'),
        ],
      ),
    );
  }
}
