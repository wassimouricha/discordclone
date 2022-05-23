import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Discord demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 64,78,237),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Discord demo homepage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
       
      appBar: AppBar(
backgroundColor: const Color.fromARGB(255, 64,78,237),
        title: 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
            Row(
              
              children: const [
               
                 Icon(Icons.discord , size: 35,), 
                 SizedBox(width: 5,),
            Text("Discord" ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
              ],
            ),
            TextButton(onPressed: (){}, child: const Text("Télécharger", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold ,color: Colors.white),)),
            TextButton(onPressed: (){}, child: const Text("Nitro", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold ,color: Colors.white),)),
            TextButton(onPressed: (){}, child: const Text("Sécurité", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold , color: Colors.white),)),
            TextButton(onPressed: (){}, child: const Text("Assistance", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold ,color: Colors.white),)),
            TextButton(onPressed: (){}, child: const Text("Blog", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold ,color: Colors.white),)),
            TextButton(onPressed: (){}, child: const Text("Emploi", style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold ,color: Colors.white),)),
              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(primary: Colors.white ,   shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ), ), child: const Text("Se connecter" , style:TextStyle(color: Colors.black))   ,),
         
        ],),

      ),
      body: 
      
      Center(child: Stack(
          children:

           [
            const SizedBox(
              height: 1000,
              width: 2000,
           
            ),
            Positioned(
              top: 300,
              left: 0,
              child: Image.asset("image2.png"),
              ),
              Positioned(
              top: 560,
              left: 0,
              child: Image.asset("image1.png"),
              ),
                Positioned(
              top: 560,
              right: 0,
              child: Image.asset("image3.png"),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      const SizedBox(
                  width: 400,
                child: Text("IMAGINE UN ENDROIT..." , style: TextStyle(fontSize: 70 , fontWeight: FontWeight.w900 , color: Colors.white, ), textAlign: TextAlign.center,),
              ),
               const SizedBox(
                  width: 600,
                child: Text("…où tu pourrais faire partie d'un club scolaire, d'un groupe de gamers ou d'une communauté d'art internationale. Un endroit où toi et ta bande d'amis pouvez simplement passer du temps ensemble. Un endroit qui permettrait plus facilement de discuter tous les jours et de se retrouver plus souvent." , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),),
              ),
              const SizedBox(height: 20,),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.download_sharp , color: Colors.black,), label:  const Text("Télécharger pour windows" , style: TextStyle(color: Colors.black , fontSize: 20),),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    primary: Colors.grey[200],
                    padding: const EdgeInsets.all(25),
                  ),
                  ),
                  const SizedBox(width: 50,),
                  ElevatedButton(onPressed: (){},  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                      
                      
                    ),
                       padding: const EdgeInsets.all(25),
                     primary: Colors.black
                  ), child: const Text("Ouvrir discord dans ton navigateur" , style: TextStyle(color: Colors.white ,  fontSize: 20),) ,),
                ],
              )
                ],
              ),
           
            
          ],
      ),
      ),
  
  
    );
  }
}
