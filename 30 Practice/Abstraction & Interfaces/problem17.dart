class Playable {
  void play() {}
}

class Football implements Playable {
  @override
  void play() => print('Playing Football');
}

class Cricket implements Playable {
  @override
  void play() => print('Playing Cricket');
}

void main() {
  List<Playable> games = [Football(), Cricket()];
  for (var g in games) {
    g.play();
  }
}
