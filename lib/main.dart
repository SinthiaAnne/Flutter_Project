import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_project/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

       home: Scaffold(
         appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 143, 255),
          title: const Text(
            "My First  Project",
         textAlign:TextAlign.center,    
          style: TextStyle(
            color: Colors.white,
          ),      
          ),
          centerTitle: true,                
        ), 
   
         drawer: Drawer(
           child: Container(
            color: Colors.deepPurple,
            child:ListView(
              children: [
                const DrawerHeader(
                  child: Center(
                    child:Text(
                      'Home',
                      style: TextStyle(fontSize: 42),
                      ) ,
                    )
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'Home Page',
                      style: TextStyle(fontSize: 20),
                      ),
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const HomePage())
                        );
                      },
                  )
              ],
            ) ,
           ),
        ),
       


        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.sizeOf(context).height,
             width: MediaQuery.sizeOf(context).width,
          
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_1280.jpg'),
                fit: BoxFit.cover,
              ),
            ),
             
            // decoration: BoxDecoration(
              
            //   color: Colors.blue.shade100,
            //   //image: const DecorationImage(
            //    // image:AssetImage('assets/pexels-photo-326055.webp'),
            //    // fit: BoxFit.contain,
                
            //     ),
          
          
              child: Column(
                children: [
                  Container(  
                margin: const EdgeInsets.all(12.0),  
                padding: const EdgeInsets.all(8.0),
                  
                decoration:BoxDecoration(  
                    borderRadius:BorderRadius.circular(8),  
                    color:Colors.green, 
                  
                ),  
                child: const Text("Apple",
                style: TextStyle(
                  color:Colors.yellowAccent,
                  fontSize:25
                  ),
                  
                  
                ),  
              ), 
              
              Container(  
                margin: const EdgeInsets.all(12.0),  
                padding: const EdgeInsets.all(8.0),  
                decoration:BoxDecoration(  
                    borderRadius:BorderRadius.circular(8),  
                    color:Colors.green  
                ),  
                child: const Text("Mango",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),  
              ),  
              
              Container(  
                margin: const EdgeInsets.all(12.0),  
                padding: const EdgeInsets.all(8.0),  
                decoration:BoxDecoration(  
                    borderRadius:BorderRadius.circular(8),  
                    color:Colors.green  
                ),  
                child: const Text("Berry",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),  
              ),  
              
              Container(  
                margin: const EdgeInsets.all(12.0),  
                padding: const EdgeInsets.all(8.0),  
                decoration:BoxDecoration(  
                    borderRadius:BorderRadius.circular(8),  
                    color:Colors.green  
                ),  
                child: const Text("Orange",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),  
              ), 
              Container(  
                margin: const EdgeInsets.all(12.0),  
                padding: const EdgeInsets.all(8.0),  
                decoration:BoxDecoration(  
                    borderRadius:BorderRadius.circular(8),  
                    color:Colors.green  
                ),  
                child: const Text("Lemon",style: TextStyle(color:Colors.yellowAccent,fontSize:25),),  
              ),
              
              
              
              
                ],
              ),
                
              
            ),
        ),
     

        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 7, 143, 255),
          child:IconButton(
            onPressed:(){
              print("Button pressed");
            },
            icon:const Icon(
              Icons.login,
              color: Colors.white,
            )
            
            )
         
        ),
         ),
          
       );
    
  }
}
     