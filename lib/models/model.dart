class CardModel{
  int id;
  String title;
  CardModel({this.id , this.title});
}

 List<CardModel> cardList=[
  CardModel(id: 1 , title: 'This is Text This is Text'),
   CardModel(id: 2 , title: 'This is Text This is Text'),
   CardModel(id: 3 , title: 'This is Text This is Text'),
   CardModel(id: 4 , title: 'This is Text This is Text'),
   CardModel(id: 5 , title: 'This is Text This is Text'),
   CardModel(id: 6 , title: 'This is Text This is Text'),
   CardModel(id: 7 , title: 'This is Text This is Text'),
   CardModel(id: 8 , title: 'This is Text This is Text'),
 ];

class CardViewModel{
  String title;
  CardViewModel(CardModel cardModel){
   title= 'card'+ cardModel.id.toString()+ cardModel.title;

  }
}