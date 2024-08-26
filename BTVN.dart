// /// Practise 1: String
// void main(List<String> args) {
//   String str =
//       " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";

//   str = str.trim();
//   str = str.replaceAll('...', '');

//   /// code đế in ra "Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)"
//   var result = str.substring(0, 1).toUpperCase() + str.substring(1);
//   result = result.replaceAll('dart', 'Dart');
//   result = result.replaceAll('Dart basics', 'DART BASIC');

//   print("$result");
// }

// ///Practise 2:
// void main(List<String> args) {
//   List arr = [
//     1,
//     2,
//     3,
//     "đây",
//     "kết",
//     "là",
//     true,
//     false,
//     {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
//     ['thứ', 'quả', 'về'],
//     "(phần 1)",
//     {"flutter": "dart"},
//   ];
//   String rs = "${arr[3].toString().substring(0, 1).toUpperCase()}"
//       "${arr[3].toString().substring(1, 3)} "
//       "${arr[5].toString()} "
//       "${arr[4].toString()} "
//       "${arr[9][1].toString()} "
//       "${arr[8][true].toString()} "
//       "${arr[8][1].toString()} "
//       "${arr[9][0].toString()} "
//       "${arr[1].toString()} "
//       "${arr[9][2].toString()} "
//       "${arr[11]["flutter"].toString().substring(0, 1).toUpperCase()}"
//       "${arr[11]["flutter"].toString().substring(1, 4)}"
//       "${arr[8][10.2].toString()} "
//       "${arr[8][false].toString().substring(0, 10).toUpperCase()} "
//       "${arr[10].toString()}";
//   print("$rs");
// }

//Pratise 2.1
// void main(List<String> args) {
//   /*Ví d ụ dưới đây có 3 l ỗi. Hãy tìm và s ửa hết 3 lỗi này. Nh ớ đọc ví dụ về ... nhé m ọi người.*/
//   var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
//   Map<dynamic, List<String?>?>? sMap = {
//     1: null,
//     2: [],
//     3: ["x", "y", "z"]
//   };
//   Map<dynamic, List<dynamic>?>? map = {
//     "first": ["a", "b", "c", "d"]
//   };
//   map.addAll(sMap);
//   List<int?> arrsToInt =
//       arrs.whereType<String>().map((e) => int.parse(e)).toList();
//   map["second"] = arrsToInt;
//   map["third"] = sMap[3]?.sublist(1) ?? [];
//   /*Ví d ụ về ...
//  Cách sử dụng: [...Iterable]
//  Khi sử dụng ... s ẽ lấy toàn b ộ phần tử của Iterable add vào trong []
//  ví dụ:
//  var a = [1,2,3];
//  var b = [4,5,6];
//  var result = [...a, ...b] // s ẽ cho ra result = [1,2,3,4,5,6]*/
//   map["fourth"] = [
//     ...arrs
//         .whereType<String>()
//         .map((e) => int.parse(e))
//         .where((e) => e % 2 == 1),
//     ...arrs.where((e) => e == null),
//     ...?sMap[3]?.sublist(0, 2),
//   ];
//   print(map);
// }
