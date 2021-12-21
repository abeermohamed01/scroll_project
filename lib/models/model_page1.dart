class CardModel{
  int id;
  String title;
  String text;
  CardModel({this.id , this.title , this.text});
}

 List<CardModel> cardList=[
  CardModel(id: 1 , title: 'This is Text This is Text' , text: 'This is Header '),
   CardModel(id: 2 , title: 'This is Text This is Text', text: 'This is Header '),
   CardModel(id: 3 , title: 'This is Text This is Text', text: 'This is Header '),
   CardModel(id: 4 , title: 'This is Text This is Text', text: 'This is Header '),
   CardModel(id: 5 , title: 'This is Text This is Text', text: 'This is Header '),
   CardModel(id: 6 , title: 'This is Text This is Text', text: 'This is Header '),
   CardModel(id: 7 , title: 'This is Text This is Text', text: 'This is Header '),
   CardModel(id: 8 , title: 'This is Text This is Text', text: 'This is Header '),
 ];

class CardViewModel{
  String title;
  String text;
  CardViewModel(CardModel cardModel){
   title= 'card'+ cardModel.id.toString()+ cardModel.title;
   text =  cardModel.text+cardModel.id.toString();

  }
}