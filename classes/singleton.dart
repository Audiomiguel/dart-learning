class MyService {
  String url = 'https://api.com';
  String key = 'ABC123';
  static final MyService _singleton = new MyService._internal();

  factory MyService() {
    return _singleton;
  }

  MyService._internal() {
    print('Constructor patito');
  }
}

void main(List<String> args) {
  final service1 = new MyService();
  service1.url = 'https://api.com/v2';
  final service2 = new MyService();
  service2.url = 'https://api.com/v2';
}
