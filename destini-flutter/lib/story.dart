class Story {
  late String storyTitle;
  late String choice1;
  late String choice2;

  Story({required String s, required String ch1, required String ch2}) {
    storyTitle = s;
    choice1 = ch1;
    choice2 = ch2;
  }
}

Story newStory = Story(s: 'text', ch1: 'text', ch2: 'text');