void main() {
  List<int> scores = [80, 90, 85, 75, 95];
  int total = 0;

  for (var score in scores) {
    total += score;
  }
  double average = total / scores.length;
  print('rata-rata nilai : $average');

  for (var score in scores) {
    if (score > 75) {
      print('nilai $score : lulus');
    } else {
      print('nilai $score : gagal');
    }
  }
}
