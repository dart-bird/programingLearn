## programingLearn
# Flutter
Github link: [All About Flutter Doc](https://github.com/londonappbrewery/Flutter-Course-Resources)
## Tips
### 1. Android Studio or Visual Studio Code (Android Studio 추천)  
### 2. Reformat Code with dartfmt (Right Click mouse, Reformatting Code good to see)
### 3. **Hot Reload** & **Hot Restart** (번개 모양 아이콘)  
  3-1. Hot Reload (수정한 부분만 reload)  
  3-2. Hot Restart (전체 reload, but 테스트 중인 데이터가 날라감)  
### 4. To Use Hot Reload & Hot Restart  func?  
**EX)** 
```
void main() {
      runApp(
        MaterialApp(
          home: Center(
            child: Text('Hello World'),
          ),
        ),
      );
    }
```
to
```
void main() {
      runApp(
        MyApp()
      );
    }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text('w'),
      ),
    );
  }
}
```
## About Code
```
import 'package:flutter/material.dart';

//The main function is the starting point for all our Flutter app
void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage('http://www.bricon.co.kr/shop/data/goods/1541962004958l0.png'),
          ),
        ),
      )
    );
  }
}

```  
   
다음과 같이 코드를를 보면 MaterialApp 이 Scaffold를 자식으로 포함하고  
이어서 Scaffold가 Color, AppBar, Center 순으로 자식을 두고 있다.  
  
이로써 MaterialApp 은 아래의 그림과 같이 트리구조를 이루게 된다.  
![flow_chart](https://user-images.githubusercontent.com/51515055/71601544-33f56e00-2b97-11ea-9386-eeaed7a49ec3.jpg)

위 코드는 Scaffold 를 사용한 것인데 Scaffold 는 앱의 레이아웃 구성을 도와줌. 메뉴바, 이미지, 등등 ...
자세한 사항은 [Scaffold Documentation](https://api.flutter.dev/flutter/material/Scaffold-class.html) 참고  
