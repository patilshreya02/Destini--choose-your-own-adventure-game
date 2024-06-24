import 'story.dart';

/* you have created a Story class in story.dart with a constructor and instance variables,
and then you used this class in story_brain.dart to create a list of Story objects. */
class StoryBrain {
  int _storyNum = 0;
  List<Story> storyData = [
    Story(
        storyT:
            "You are an explorer in a dense forest. You come across an ancient cave entrance.",
        choiceA: "Enter the cave",
        choiceB: " Continue walking through the forest."),
    Story(
        storyT: "You decide to enter the cave. Inside, you find two tunnels.",
        choiceA: "Take the left tunnel",
        choiceB: "Take the right tunnel"),
    Story(
      storyT:
          'You take the left tunnel and find a sleeping dragon guarding a pile of treasure.',
      choiceA: 'Try to sneak past the dragon',
      choiceB: 'Leave the cave',
    ),
    Story(
      storyT:
          'You take the right tunnel and it leads to a dead end. You turn around and leave the cave.',
      choiceA: 'Restart',
      choiceB: '',
    ),
    Story(
      storyT:
          'You decide not to enter the cave and continue walking through the forest. Soon, you find a beautiful waterfall and decide to rest there.',
      choiceA: 'Swim in the waterfall',
      choiceB: 'Set up camp',
    ),
    Story(
      storyT:
          'You successfully sneak past the dragon and claim some treasure. You leave the cave richer than before.',
      choiceA: 'Restart',
      choiceB: '',
    ),
    Story(
      storyT: 'You swim in the refreshing waterfall and feel rejuvenated.',
      choiceA: 'Restart',
      choiceB: '',
    ),
    Story(
      storyT: 'You set up camp and enjoy a peaceful night under the stars.',
      choiceA: 'Restart',
      choiceB: '',
    ),
  ];
//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return storyData[_storyNum].storyT;
  }

  String getchoiceA() {
    return storyData[_storyNum].choiceA;
  }

  String getchoiceB() {
    return storyData[_storyNum].choiceB;
  }

  //TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNum == 0) {
      _storyNum = 1;
    } else if (choiceNumber == 2 && _storyNum == 0) {
      _storyNum = 4;
    } else if (choiceNumber == 1 && _storyNum == 1) {
      _storyNum = 2;
    } else if (choiceNumber == 2 && _storyNum == 1) {
      _storyNum = 3;
    } else if (choiceNumber == 1 && _storyNum == 2) {
      _storyNum = 5;
    } else if (choiceNumber == 2 && _storyNum == 2) {
      _storyNum = 3;
    } else if (choiceNumber == 1 && _storyNum == 4) {
      _storyNum = 6;
    } else if (choiceNumber == 2 && _storyNum == 4) {
      _storyNum = 7;
    } else if (_storyNum == 3 || _storyNum == 5 || _storyNum == 6 || _storyNum == 7) {
      restart();
    }
  }
  void restart() {
    _storyNum = 0;
  }
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNum == 0 || _storyNum == 1 || _storyNum == 2) {
      return true;
    } else {
      return false;
    }
  }
}
