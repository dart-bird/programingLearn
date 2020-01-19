//TODO: Step 6 - import the story.dart file into this file.

//TODO: Step 5 - Create a new class called StoryBrain.

//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called 다시시작() that resets the storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.

import 'story.dart';

int _storyNumber = 0;

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            '어느 한적한 곳, 구불구불한 도로에서 당신 차의 타이어가 터졌고, 스마트폰을 켜보니 먹통이였다. 당신은 남의 차를 얻어 타기로 결심했다. 결심한 그때, 녹슨 픽업 트럭이 옆에서 덜컹거리며 멈춰 선다. 수수한 눈을 가진 모자를 쓴 한 남자가 승객용 문을 열어 주며 묻는다: "얘야, 태워줄 필요가 있니?"',
        choice1: '네, 도와주셔서 감사합니다!',
        choice2: '\'살인자냐고 그에게 물어보는게 좋겠어.\''),
    Story(
        storyTitle: '한치의 고민도 없이 그는 천천히 고개를 끄떡였다.',
        choice1: '좀 무섭지만, 그래도 정직하네... 타겠습니다!',
        choice2: '\'잠깐만... 나 타이어 가는법 생각났어!\''),
    Story(
        storyTitle:
            '운전하기 시작하면서, 낯선 사람은 그의 어머니와의 관계에 대해 이야기하기 시작했다. 그는 시시각각으로 점점 화나보였는데... 갑자기 글로브 박스를 열어달라고 부탁했다. 그 안에는 피묻은 칼과 잘린 손가락 두 개, 그리고 엘튼 존의 카세트 테이프가 있었다.',
        choice1: '저 엘튼 존 완전 팬이예요! 라고 말하면서 테이프를 건네준다.',
        choice2: '칼을 들고 낯선사람을 찌른다.'),
    Story(
        storyTitle:
            '트럭을 보내고 나서 타이어를 가는 도중... 너무 한눈을 팔아서 차에 치여 죽고 말았다.',
        choice1: '다시시작',
        choice2: ''),
    Story(
        storyTitle:
            '낯선사람은 죽었다. 하지만 페달은 계속 밟힌 상태였고 핸들을 끝까지 잡아보려했지만 ... 끝내 가드레일을 박고 차가 뒤집어졌다.',
        choice1: '다시시작',
        choice2: ''),
    Story(
        storyTitle:
            '나는 "오늘 밤 사랑이 느껴지시나요?" 시를 부르며 살인마와 유대감을 맺었다.  그는 나를 옆 동네에 데려다 주었다. 내가 가기 전 그는 나에게 시체를 버리기 좋은 장소를 아는지 물어봤다. 나는 대답했다. "부두는 어때요?"',
        choice1: '다시시작',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1) {
      switch (_storyNumber) {
        case 0:
          _storyNumber = 2;
          break;
        case 1:
          _storyNumber = 2;
          break;
        case 2:
          _storyNumber = 5;
          break;
        default:
          _storyNumber = 0;
      }
    } else if (choiceNumber == 2) {
      switch (_storyNumber) {
        case 0:
          _storyNumber = 1;
          break;
        case 1:
          _storyNumber = 3;
          break;
        case 2:
          _storyNumber = 4;
          break;
      }
    }
  }

  bool buttonShouldBeVisible() {
    bool boolean = false;
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) boolean = true;
    return boolean;
  }
}
//List<Story> _storyData = [
//  Story(
//      storyTitle:
//      'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
//      choice1: 'I\'ll hop in. Thanks for the help!',
//      choice2: 'Better ask him if he\'s a murderer first.'),
//  Story(
//      storyTitle: 'He nods slowly, unphased by the question.',
//      choice1: 'At least he\'s honest. I\'ll climb in.',
//      choice2: 'Wait, I know how to change a tire.'),
//  Story(
//      storyTitle:
//      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
//      choice1: 'I love Elton John! Hand him the cassette tape.',
//      choice2: 'It\'s him or me! You take the knife and stab him.'),
//  Story(
//      storyTitle:
//      'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
//      choice1: '다시시작',
//      choice2: ''),
//  Story(
//      storyTitle:
//      'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
//      choice1: '다시시작',
//      choice2: ''),
//  Story(
//      storyTitle:
//      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
//      choice1: '다시시작',
//      choice2: '')
//]; 