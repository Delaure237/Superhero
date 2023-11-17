
import 'package:http/http.dart' as http;
import 'dart:convert';
class Heros{
  int id;
   String name;
   String slug;
   Appearance appearance;
   Work work;
   Connections connections;
   Powerstats powerstats;
   Biography biography;
   Images images;
   Heros({
     required this.slug,
    required this.biography,
    required this.connections,
    required this.appearance,
    required this.work,
    required this.powerstats,
    required this.id,
    required this.name,
     required  this.images,
  });
  factory Heros.fromJson(Map<String,dynamic> json){
    return Heros(
      id: json['id'],
      powerstats: json['powerstats'],
      work: json['work'],
      biography: json['biography'],
      name: json['name'],
      images: json['images'],
      connections: json['connections'],
      appearance: json['appearance'],
      slug: json['slug'],

    );
  }
}
class Appearance {
  final String gender;
  final String race;
  final List height;
  final List weight;
  final String eyeColor;
  final String hairColor;
  Appearance({
    required this.gender,
    required this.race,
  required this.height,
  required this.weight,
    required this.eyeColor,
    required this.hairColor,

});
  factory Appearance.fromJson(Map<String, dynamic> json){
     return Appearance(
         gender: json['gender'],
         race: json['race'],
         height: json['height'],
         weight: json['weight'],
         eyeColor: json['eyeColor'],
         hairColor: json['hairColor']
     );

  }
}
class Biography{
   String fullName;
   String alterEgos;
   List  aliases;
   String PlaceOfBirth;
   String publisher;
   String alignement;

   Biography({
    required    this.aliases,
    required this.alterEgos,
    required this.fullName,
    required this.alignement,
    required  this.PlaceOfBirth,
    required this.publisher,

});
   factory Biography.fronJson(Map<String , dynamic> json){
     return Biography(
         aliases: json['aliases'],
         alterEgos: json['alterEgos'],
         fullName: json['fullName'],
         alignement: json['alignement'],
         PlaceOfBirth: json['PlaceOfBirth'],
         publisher: json['publisher'],
     );
   }
}
class Work{
  String occupation;
  String base;
  Work({
    required this.base,
    required this.occupation,
});
  factory Work.fromJson(Map<String,dynamic>  json){
    return  Work(
        base: json['base'],
        occupation: json['occupation']
    );
  }
}
class Connections{
  String groupAffiliation;
  String relatives;
  Connections({
    required this.groupAffiliation,
    required this.relatives,
});
  factory Connections.fromJson(Map<String ,  dynamic> json){
    return Connections(
        groupAffiliation:json['groupAffiliation'] ,
        relatives: json['relatives'],
    );
  }
}
class Powerstats{
  int intelligences;
  int strenght;
  int speed;
  int durability;
  int power;
  int combat;
  Powerstats({
    required this.combat,
    required this.durability,
    required this.intelligences,
    required this.power,
    required this.speed,
    required this.strenght,
});
  factory Powerstats.fromJson(Map<String,dynamic> json){
    return Powerstats(combat: json['combat'],
        durability: json['durability'],
        intelligences: json['intelligences'],
        power: json['power'],
        speed: json['speed'],
        strenght: json['strenght'],
    );
  }
}
class Images{
  String xs;
  String sm;
  String md;
  String lg;
  Images({
    required this.lg,
    required this.md,
    required this.sm,
    required this.xs,

});
}