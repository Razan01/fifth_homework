import 'package:fifth_homework/fifth_homework.dart' as fifth_homework;

List name = [
  "razan",
  "nora",
  "arwa",
  "hanan",
  "sara",
  "mohammed",
  "osama",
  "abdulkarim"
];
List age = [22, 23, 24, 25, 26, 27, 28, 29];

Map<String, int> data = {
  "razan": 22,
  "nora": 23,
  "arwa": 24,
  "hanan": 25,
  "sara": 26,
  "mohammed": 27,
  "osama": 28,
  "abdulkarim": 29
};

void main(List<String> arguments) {
  print(
      "--------------------------------------------------------------------\n");
  print("list name: >>");
  printList();
  print("______________________________\n");
  print("who in index #5 ??");
  printindex(num: 5);
  print("______________________________\n");
  print("Average age between razan & arwa are : >>");
  print(calculateAge(age1: 0, age2: 2));
  print("______________________________\n");
  print("Print all the name with age: >>");
  print(printNameAge());
  print("\n");
  print(
      "--------------------------------------------------------------------\n");
}

void printList() {
  print("$name\n");
}

printindex({required int num}) {
  print("${name[num]} \n");
}

double calculateAge({required int age1, required int age2}) {
  return (age[age1] + age[age2]) / 2;
}

String printNameAge() {
  var x = 0;
  for (var element1 in data.entries) {
    x = x + element1.value;
    print(element1);
    print("~~~~~~~~~~~~~~~~~~~~~~~~~~");
  }
  x = (x / 2).toInt();

  return "END of Map *-* the total Average age are " + x.toString();
}
