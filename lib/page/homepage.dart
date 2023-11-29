import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Training',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Expanded(
                      child: Text('This is my project',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    ),
                    const Text('Detail',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.orangeAccent
                      ),
                    ),
                    const SizedBox(width: 15,),
                    IconButton(
                      onPressed: (){}, 
                      icon:const Icon(Icons.arrow_forward, size: 30,)
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                const Baner(),
                const SizedBox(height: 20,),
                const Extremy(),
                const SizedBox(height: 20,),
                const Text(
                  'This is Flutter project',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 20,),
                const Padding(
                  padding:EdgeInsets.symmetric(horizontal: 5),
                  child: ListContain(),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Baner extends StatefulWidget {
  
  const Baner({super.key});

  @override
  State<Baner> createState() => _BanerState();
}

class _BanerState extends State<Baner> {
  // ignore: non_constant_identifier_names
  Color ColorBaner = Colors.orange;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:const EdgeInsets.all(10),
      height: size.height *1/5,
      width: size.width *1,
      decoration:BoxDecoration(
        color: ColorBaner,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30), 
          topRight: Radius.circular(80),
          topLeft: Radius.circular(10)
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('http://github.com',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 30),
            child:  Text('Overall, how satisfied are you with Google Fonts?,',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          const SizedBox(height: 45,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              const Expanded(
                child: Row(
                  children: [
                    Icon(Icons.exit_to_app, color: Colors.white,size: 30,),
                    Text('ZendVN',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    )
                  ],
                )
              ),
              Container(
                height: 50,
                width: size.width* 1/6,
                decoration:const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                    left:Radius.circular(50),
                    right:Radius.circular(50),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset:  Offset(0, 2),
                      blurRadius: 5,
                      spreadRadius: 0
                      
                    )
                  ]
                ),
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      ColorBaner = Colors.primaries[Random().nextInt(Colors.primaries.length)];
                    });
                  },
                  icon:const Icon(Icons.settings, size: 30,)
                ),
              )
            ],),
          )
        ],
      ),
    );
  }
}
class Extremy extends StatelessWidget {
  const Extremy({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height:size.height *1/10 ,
      width: size.width *1,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orangeAccent,
            Colors.white54,
            Colors.orange
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight
        ),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
    );
  }
}

class ListContain extends StatefulWidget {
  const ListContain({super.key});

  @override
  State<ListContain> createState() => _ListContainState();
}

class _ListContainState extends State<ListContain> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics:const  NeverScrollableScrollPhysics(),
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2/2.5,
        crossAxisSpacing: 20,
        mainAxisSpacing: 15
      ), 
      itemCount: 6,
      itemBuilder: (context, index) =>
        InkWell(
          child: Container(
            decoration:const BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                    offset:  Offset(0, 3),
                    blurRadius: 6,
                    spreadRadius: 0
                )
              ]
            ),
            child:const Padding(
              padding:  EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.amber,
                    radius: 30,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    'Xin chao tat ca moi nguoi',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}