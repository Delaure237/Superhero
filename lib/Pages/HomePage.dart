import'package:flutter/material.dart';
import 'package:untitled16/services/user_services.dart';

import '../models/Heroes.dart';
class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Heros>> futureHero;
  @override
  void initState(){
    super.initState();
    futureHero = HeroesService().getHero();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.blue,
       title: const Text("Super Heroes",style: TextStyle(color: Colors.white),),
       centerTitle: true,
     ),
      body: Center(
        child: FutureBuilder<List<Heros>>(future: futureHero,
        builder : ((context ,snapshot){
          if(snapshot.hasData){
             return  GridView.builder(
                 itemCount: snapshot.data!.length,
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 mainAxisSpacing: 10,
                 mainAxisExtent: 120,
                 crossAxisSpacing: 10),
              itemBuilder:( (buildContext ,index) {
                 Heros hero = snapshot.data![index];
                  return ListTile(
                      title:ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          hero.images.sm,
                        ),
                      ),
                    subtitle: Text(
                      hero.slug,
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                      ),
                    ),
                  );
              }),
             );
        } else if(snapshot.hasError){
             return Text('ERROR :${snapshot.error}');
          }
          return const CircularProgressIndicator();
        }
        )

      ),
      )
    );
  }
}
