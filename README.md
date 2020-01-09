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

### Container 의 margin 과 padding
**EX)**  
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
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.all(left: 20.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text("hello world"),
          ),
        ),
      ),
    );
  }
}

```  
위 코드를 적용시키면 다음 사진과 같이 적용이 된다.
![image](https://user-images.githubusercontent.com/51515055/72030635-057d3e80-32cd-11ea-80c4-4b1968e2be63.png)  
위 사진은 Dart DevTools 를 사용하여 Debug Paint를 적용시켜 너비 화인을 한 사진이다.  
`height: 100.0`,`width: 100.0` 을 통해 Container의 크기가 100x100 이 된 것을 볼 수 있다.  
`margin: EdgInsets.all(20.0)` - 텍스트 상자 바깥 모든 범위를 20씩 주어서 칸을 띄움.
`padding: EdgInsets.all(20.0)` - 텍스트 상자안에 있는 글 상자 바깥 모든 범위를 20씩 주어서 칸을 띄움.
EdgeInsets.* (너비 처리 일괄적용, 부분적용 가능 하게 하는 메소드)  

### Row and Column  
Container 를 사용하게 되면 여러개를 사용해야하는데 위 Container 예제를 보면 한개의 Container밖에 사용하지 못한다.  
여러개의 Container를 사용하려면 `child: Row` 나 `child: Column` 으로 `children: <Widget> []` 안에 여러개의 Container를 구성하면 된다.  
**EX)**  
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
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: 100.0,
                color: Colors.red,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
              ),
              Container(
                height: double.infinity,
                width: 100.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```  
![image](https://user-images.githubusercontent.com/51515055/72033429-a1ab4380-32d5-11ea-880d-fc797f1b7657.png)  
위 코드를 적용시키면 위 사진과 같이 순서대로 빨간색, 노란색, 파란색 상자가 나오게 된다.  
`mainAxisAlignment: MainAxisAlignment.spaceBetween`- 아래 자식들을 일정하게 띄워놓는다. spaceBetween말고도 여러개가 존재한다.  
`crossAxisAlignment: CrossAxisAlignment.center` - 아래 자식들을 모두 중앙으로 위치 시킨다. center말고도 start, end 등 여러개 존재한다.  
`double.infinity` - 해당 길이를 최대치로 설정한다.
