 import 'package:untitled16/models/Heroes.dart';
 import 'package:http/http.dart' as http;
 import 'dart:convert';
class HeroesService{
   Future<List<Heros>> getHero() async {
      final response = await http.get(Uri.parse("https://akabab.github.io/superhero-api/api/all.json"));
      if(response.statusCode == 200){
         final  data = jsonDecode(response.body);
         final List<Heros> list  = [];
       /*for(var i = 0; i < data['id'].length;i++){
            final entry = data['id'][i];

            list.add(Heros.fromJson(entry));
         }*/


         return data ;

      } else{
        throw Exception('HTTP Failed');
      }

   }
 }