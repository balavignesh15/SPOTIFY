

class imgclass{
  String? image;
  String? text;
  String? subtext;

  imgclass(this.image,this.text,this.subtext);
}

List i1 = imgclassdata.map((e) => imgclass(e["image"],e["text"],e["subtext"])).toList();

var imgclassdata =[

  {"image":"assets/img/img.jpg","text":"Enthara Enthara....","subtext":"Anirudh ravichandar"},
  {"image":"assets/img/img.jpg","text":"Enthara Enthara....","subtext":"Anirudh ravichandar"},
  {"image":"assets/img/img.jpg","text":"Enthara Enthara....","subtext":"Anirudh ravichandar"},
  {"image":"assets/img/img.jpg","text":"Enthara Enthara....","subtext":"Anirudh ravichandar"},
  {"image":"assets/img/img.jpg","text":"Enthara Enthara....","subtext":"Anirudh ravichandar"},
  {"image":"assets/img/img.jpg","text":"Enthara Enthara....","subtext":"Anirudh ravichandar"},
  {"image":"assets/img/img.jpg","text":"Enthara Enthara....","subtext":"Anirudh ravichandar"},

];
