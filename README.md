# SwiftUINavigationPatternBestPractice
- 현 프로젝트의 Navigation Design을 개선하기 위해 학습한 앱 입니다. 

# 학습 내용 
- Pop To Root (Without Duplicate and Without Strange Navigation Tag Changing)
- Various NavigationLink Method ( isActive, tag )
- State Manager Pattern 

# 리뷰 
- State Manager Class를 Window에서 StateObject로 선언해서 네비게이션의 상태를 관리하면 안정성이 올라가느 것은 좋은 발견이었다.
- Pop To Root SwiftUI는 개인적인 생각에는 Root뷰로 한번에 나가는 것이 조금 까다롭고 앱이 커지면 이상동작이 일어나기도 한다. 
- Navigation Tag의 이상 동작을 콤바인을 사용해 .filter{ !$0 }를 사용한 것은 좋았다.
- 앱이 커지면 여러 가지 것들이 맞 물리면서 특히 네비게이셔 쪽에 오류를 많이 발생시키는데 이번 BestPracticePack의 견해와 나의 견해는 조금 다르다.
- 애플 공식 가이드 문서르 보면 TabView는 항상 없어지면 안 된다, 없어지는 상황은 Modal( ActionSheet, Full Screen Cover, etc..) 이다. 
- 상기의 내용으로 미루어 볼 때 1단계 댑스로 들어갈 때 ActionSheet나 FullScreenCover로 진입하고,
- Pop To Root 가 필요한 상황이 오면 ActionSheet나 FullScreenCover의 isPresented State를 false로 꺼주면 손쉽게 Pop To Root 할 수 있다.
- 물론, BestPracticePack의 내용이 틀린 것은 아니나, 내가 겪었던 경험을 미루어 볼 때 Pop To Root의 코드도 동작을 잘 안 할 때가 있어서이다. 

# 인사이트 
- 네비게이션은 최대한 간단히 만들어야 하며, 댑스를 너무 깊게 만들지 않으며, 뷰가 순환하며 계속 쌓이느 구조로 설계하면 안 된다. 
- 개인적인 생각은 SwiftUI느 UI만들기도 정말 쉽고, 코드도 직관적이나, AHIG를 준수한다면 크게 고생할 일은 없다.
- 앱이 커질 때 원치 않게 뷰가 뒤로가고 움직이는 경우가 많은데, 그럴 때는 Navigation Tag를 건드리는 게 없는지,
- DB쪽 NotificationToken이 Noti를 줘서 뷰들이 원하지 않게 바뀌는지를 유심히 체크해봐야한다. 
