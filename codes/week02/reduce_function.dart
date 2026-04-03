void main() {
  List<String> nctDreamList = ['런쥔', '마크', '재민', '제노', '지성', '천러', '해찬'];
  final allMembers = nctDreamList.reduce((value, element) => value + ', ' + element);
  // 리스트 안의 값을 순회하면서 값들을 더하여 반환한다.
  print(allMembers);
}