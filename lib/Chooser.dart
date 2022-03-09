import 'story.dart';

class Chooser {
  int _storyNumber = 0;

  List<Story> _storys = [
    Story(
        "Vous venez de crevez un pneu à St André."
            " Vous n'avez pas de téléphone vous décidez de faire du stop."
            " Une ford fiesta rouge s'arrête et le conducteur "
            "vous demande si vous voulez qu'il vous dépanne.",
        "Vous lui remerciez et vous montez dans la voiture",
        "Vous lui demandez s'il n'est pas un meurtrier avant !"),
    Story(
        "Il acquiesce de la tête sans faire attention à la question.",
        "Au moins il est honnête. Vous montez ! ",
        "Attends, mais je sais comment changer un pneu voyons !"),
    Story(
        "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gant. À l’intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.",
        "J'adore T-Matt, je lui donne le CD.",
        " C'est lui ou moi, je prends le couteau et je le poignarde."),
    Story(" Woaw ! Quelle évasion ! ", " Recommencer", ""),
    Story(
        "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes.",
        "Recommencer",
        ""),
    Story(
        "Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps.",
        "Recommencer",
        ""),
  ];

  String getStoryText() {
    return _storys[_storyNumber].storyText;
  }

  String getStoryChoice1() {
    return _storys[_storyNumber].choice1;
  }

  String getStoryChoice2() {
    return _storys[_storyNumber].choice2;
  }

  void nextStory(int choix) {
    if (_storyNumber == 0) {
      _storyNumber = 2;
    } else if (_storyNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 2) {
      _storyNumber = 5;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void newStory(int choix) {
    if (_storyNumber == 0) {
      _storyNumber++;
    } else if (_storyNumber == 1) {
      _storyNumber = 3;
    } else if (_storyNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3) {
      _storyNumber = 0;
    }
  }

  void restart() {
    _storyNumber = 0;
  }
}
