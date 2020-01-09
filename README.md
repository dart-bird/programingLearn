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

### Scaffold Widget
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

### Asset
앱에서 추가로 필요한 준비물들을 준비시킬 수 있음  
**EX)**
1. 개발자가 지정한 이미지 파일을 앱에서 사용하게끔 하고 싶다.  
2. 이미지 파일을 하나 가져와서 자신의 Project폴더안에 Image폴더를 생성한 후 그안에 image파일을 넣음.  
3. 자신의 Project 폴더에 pubspec.yaml 이라는 yaml 파일이 하나 있는데 그곳에  
```
flutter:
  assets: // 추가 코드 _ 다음아래 내용들을 포함하겠다.
    - images/ // 추가 코드 _ 이미지폴더 경로에 있는 모든 파일을 지정.
```
추가 코드를 삽입해주면 된다.  
images/ -> images에 존재하는 모든 파일들을 읽겠다라는 뜻.  
images/*.png -> images에 존재하는 모든 png파일을 읽겠다라는 뜻.  

### AppIcon
**ANDROID** -> android/app/src/main/res/mipmap-*  
**IOS** -> ios/Runner/Assets.xcassets/Applcon.appiconset/  
**ANDROID** 는 mipmap 폴더에 하나하나 들어있음.  하나하나 교체 해주어야함.  
**IOS** 는 Contents.json 수정과 함께 *.png 들을 교체 해줘야함. (json파일 안건드리면 손과 머리가 고생...)  
### Container Widget
Container 는 박스로 생각하면 된다.  
쉬운 예시로는 다음과 같이 Container를 이용하여 hello world 라는 텍스트 상자를 만드는 것이다.  
```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          color: Colors.white,
          child: Text("hello world"), 
        ),
      ),
    );
  }
}
```  
위 코드와 같이  
`color: Colors.white` - 텍스트 상자를 하양색으로 설정  
`child: Text("hello world")` - 텍스트 상자안에 hello world 라는 글을 쓴다.  
를 통해 폰 화면에 hello world 라는 텍스트 상자가 보인다.  
![image](https://user-images.githubusercontent.com/51515055/72029039-f9db4900-32c7-11ea-91c2-0f4f34f9b150.png)  

하지만 폰 상태바에 표시되는 것을 볼 수 있다.  
우리는 이를 해결하기 위해 다음 위젯을 사용하면 된다.

### SafeArea Widget
SafeArea 는 스마트폰의 크기에 맞춰서 화면 크기를 맞춰준다.  
**EX)**  

```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Container(
            color: Colors.white,
            child: Text("hello world"),
            ),
        ),
      ),
    );
  }
}
```

![image](https://user-images.githubusercontent.com/51515055/72029457-4ffcbc00-32c9-11ea-92e5-04d4c11f3f86.png)  

위 코드를 적용시켜보면 위 사진과 같이 텍스트 상자가 자동적으로 맞춰준 것을 볼 수 있다.  


margin: EdgeInsets.* (너비 처리 일괄적용, 부분적용 가능)  
