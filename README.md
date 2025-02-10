# 랜덤 컬러 앱
## 기능

1. 랜덤 색상 생성: 버튼 클릭 시 배경색이 랜덤하게 변경됩니다.
2. 색상 정보 표시:현재 화면 배경색의 RGB 값을 화면에 표시합니다.
3. 초기화 기능: 초기화 버튼을 누르면 배경색이 흰색으로 변경되고, RGB 값도 초기화됩니다.

## 동작 샘플

<img src="https://github.com/user-attachments/assets/405c5294-e885-4e73-934b-b47a32f0777d" width="30%">


## 실행 방법

해당 레포지토리에는 3개의 브랜치가 있습니다.
1. main: 아무것도 없음
2. no-storyboard: 스토리보드 없이 코드 작성
3. storyboard: 스토리보드를 사용하여 코드 작성

쉘에서 다음과 같이 레포지토리를 clone 할 수 있습니다.

```
git clone {해당 레포지토리 URL}
```


이후, 

```
git switch -b {no-storyboard 또는 storyboard}
```
를 통해 원하는 브랜치로 이동한 후

Xcode에서 해당 프로젝트를 열고 실행하면 됩니다.
