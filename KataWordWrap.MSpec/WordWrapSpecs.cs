namespace KataWordWrap {
  using System;
  using Machine.Specifications;

  public class WordWrapTests {
    public class when_word_is_shorter_than_wrap_marker {
      It should_not_wrap = () => text.ShouldEqual("word");
      Because of = () => text = Wrapper.Wrap("word", 7);

      static string text;
    }
  }
}
