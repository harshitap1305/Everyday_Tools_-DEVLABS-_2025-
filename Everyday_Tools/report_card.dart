import 'dart:io';

class Student {
  List<int> marks;
  Student(this.marks);

  int get total => marks.reduce((a, b) => a + b);
  double get average => total / marks.length;
  String get grade =>
      average >= 90 ? 'A' : average >= 75 ? 'B' : average >= 60 ? 'C' : 'D';
}

void runReportCard() {
  print('\nReport Card');
  stdout.write('Enter number of subjects (3-5): ');
  int count=int.parse(stdin.readLineSync()!);
  if (count<3 || count>5) {
    print('Invalid number of subjects');
    return;
  }

  List<int> marks = [];
  for (int i=0;i<count;i++) {
    stdout.write('Enter mark for subject ${i + 1}: ');
    marks.add(int.parse(stdin.readLineSync()!));
  }

  Student student = Student(marks);
  print('Total: ${student.total}');
  print('Average: ${student.average.toStringAsFixed(2)}');
  print('Grade: ${student.grade}');
}
