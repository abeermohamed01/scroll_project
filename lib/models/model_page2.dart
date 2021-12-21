class SecondPageModel{
  int id;
  String title;
  String text;
  SecondPageModel({this.id , this.title , this.text});
}

List<SecondPageModel> pageList=[
  SecondPageModel(id: 1 , title: 'This is Text This is Text' , text: ''),
  SecondPageModel(id: 2 , title: 'This is Text This is Text', text: ''),
  SecondPageModel(id: 3 , title: 'This is Text This is Text', text: ''),
  SecondPageModel(id: 4 , title: 'This is Text This is Text', text: ''),
  SecondPageModel(id: 5 , title: 'This is Text This is Text', text: ''),
  SecondPageModel(id: 6 , title: 'This is Text This is Text', text: ''),
  SecondPageModel(id: 7 , title: 'This is Text This is Text', text: ''),
  SecondPageModel(id: 8 , title: 'This is Text This is Text', text: ''),
];

class CardViewModel{
  String title;
  CardViewModel(SecondPageModel cardModel){
    title=  cardModel.title;


  }
}