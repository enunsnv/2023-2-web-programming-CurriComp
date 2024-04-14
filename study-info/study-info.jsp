<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link rel="icon" href="../cc.png" type="image/x-icon">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@500&family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CurriComp</title>
  <link rel="stylesheet" href="style.css"/>
</head>

<body>
  
  <div id="commonContent">

    <div id="nav-container">
      <a href="../main/main.jsp"><div id="logo">curri<br>comp</div></a>
      <nav id="nav">
        <ul>
          <li><a href="../curriculum/curriculum.jsp">커리큘럼</a></li>
          <li><a href="../study-info/study-info.jsp">학습 정보</a></li>
          <li><a href="../news/news.jsp">뉴스</a></li>
          <li><a href="../community/communityBoard.jsp">커뮤니티</a></li>
          <li><a href="../myRoadmap/myRoadMap.jsp">MyRoadMap</a></li>
  
        </ul>
      </nav>
    </div>
  
  
    <hr>
  
    <div class="vertical-nav">
      <p>Seclect<br>view</p>
      <ul>
        
<div class="vnav-group">
  <ul class="group-title"><a class="Algor">알고리즘 학습</a>
  <li><div class="vnav-content" id="Algorithm1"> <a>학습 필요성</a></div></li>
  <li><div class="vnav-content" id="Algorithm2"> <a>주요 알고리즘</a></div></li>
  <li><div class="vnav-content" id="Algorithm3"><a>참고사이트</a> </div> </li>
 </ul>

  <ul class="group-title"><a class="lang">프로그래밍 언어</a>
  <li><div class="vnav-content" id="lang1"> <a>C/C++</a></li>
  <li><div class="vnav-content" id="lang2"> <a>python</a></div></li>
  <li><div class="vnav-content" id="lang3"><a>JAVA</a> </div> </li>
  <li><div class="vnav-content" id="lang4"><a>JavaScript</a> </div> </li>
  <li><div class="vnav-content" id="lang5"><a>HTML/CSS</a> </div> </li>
  <li><div class="vnav-content" id="lang6"><a>React</a> </div> </li>
  <li><div class="vnav-content" id="lang7"><a>Node.js</a> </div> </li>
  <li><div class="vnav-content" id="lang8"><a>Spring</a> </div> </li>
  <li><div class="vnav-content" id="lang9"><a>Docker</a> </div> </li>
  </ul>

  <ul class="group-title"><a class="hard">하드웨어</a>
  <li><div class="vnav-content" id="hard1"> <a>컴퓨터 구성</a></li>
  <li><div class="vnav-content" id="hard2"> <a>컴퓨터 구조</a></div></li>
  <li><div class="vnav-content" id="hard3"><a>운영체제</a> </div> </li>
  <li><div class="vnav-content" id="hard4"><a>임베디드</a> </div> </li>
  <li><div class="vnav-content" id="hard5"><a>라즈베리파이</a> </div> </li>
  </ul>

  </div>
  
      </ul>
  
    </div>
  
  
    <div id="vertical-line"></div>
  
  </div>
  
    <div class="study-info-container">
      <div class="title Algor">알고리즘 학습</div>
      <div class="main">
        <p>학습필요성</p>
        알고리즘이란 문제를 해결하기 위한 절차나 방법으로, 복잡한 문제 상황을 효율적으로 해결해가는 일련의 과정이다. 
        이 과정을 통해 스스로 문제를 해결하는 능력을 향상 시킬 수 있고 새로운 문제 상황에서 본인만의 알고리즘을 설계할 수 있는 창의성을 기를 수 있다.
        컴퓨터공학과 학생들은 원하는 프로그램을 구현할 때, 빠르고 생산성 있는 코드를 통해 구성하는 것이 더 나은 프로그램을 만들어 낼 수 있는 방법이다. 
        이를 위해 프로그래머들에게 알고리즘은 필수적으로 학습해야하는 부분이라 할 수 있다.
      </div>
      
      <div class="main">
       	<p>주요 알고리즘</p>
        <p>그리디 알고리즘</p>
       그리디 알고리즘이란 주어진 문제에서 각 단계에서 최적이라고 생각되는 답을 선택해나가는 방식으로 적합한 결과를 도출하는 알고리즘이다.
        
         <p>DFS BFS</p>
       그래프를 탐색하기 위한 대표적인 두가지 알고리즘 <br>
       DFS : Depth First Search 깊이 우선 탐색 <br>
       BFS : Breadth First Search 너비 우선 탐색
       
        <p>정렬 알고리즘</p>
       연속된 데이터를 기준에 따라서 정렬하기 위한 알고리즘<br><br>

[ 선택 정렬 ] <br>

가장 작은 데이터를 선택해 맨 앞에 있는 데이터와 바꾸고, 그다음 작은 데이터를 선택해 앞에서 두 번째 데이터와 바꾸는 과정을 반복하여 정렬하는 알고리즘 <br>

+) 시간 복잡도 O(N^2)<br><br>

[ 삽입 정렬 ] <br>

특정한 데이터를 적절한 위치에 삽입하여 정렬하는 알고리즘<br>

첫 번째 배열이 정렬 시작의 기준이 됨<br>

+) 시간 복잡도 O(N^2)<br><br>

최선의 경우 O(N)<br>

[ 퀵 정렬 ]<br>

가장 많이 사용되는 알고리즘으로, 피벗을 기준으로 호어 분할 방식을 통해 큰 데이터와 작은 데이터의 위치를 계속 바꿔주어 분할을 수행하고, 이를 반복하여여 정렬하는 알고리즘<br>

+) 시간 복잡도 O(NlogN)<br><br>

[ 계수 정렬 ]<br>

비교 기반의 정렬 알고리즘이 아닌, 데이터의 크기가 제한되어 있을 때에 한해 생성된 리스트를 기준으로 하나씩 확인하며 해당 인덱스의 값을 1씩 증가시켜 정렬하는 알고리즘<br>

+) 시간 복잡도 O(N+K)<br>
      
     
     
        <p>이진 탐색</p>
       탐색 범위를 반으로 좁혀가며 빠르게 탐색하는 알고리즘<br><br>
       [ 순차 탐색 ]<br>
       리스트 안에 있는 특정한 데이터를 찾기 위해 앞에서부터 데이터를 하나씩 차례대로 확인하는 방법<br>

최악의 경우 시간 복잡도 O(N)<br><br>

       [ 이진 탐색 ]
       찾으려는 데이터와 중간점 위치에 있는 데이터를 반복적으로 비교<br><br>
       

      <p> 다이나믹 프로그래밍</p>
      한 번 계산한 문제는 다시 계산하지 않도록 하는 알고리즘 <br>
      큰 문제를 작게 나누고, 같은 문제라면 한 번씩만 풀어 문제를 효율적으로 해결하는 알고리즘 기법<br>
      
      
    </div>
 
 	<div class="main">
       	<p>참고사이트</p>
        알고리즘 문제를 푸는 것을 온라인 사이트를 통해 채점 받을 수 있는데, 대표적으로 이용되는 사이트들은 다음과 같다. <br><br>
        클릭하면 이동할 수 있어요 ! :)<br><br>
      	<a href="https://www.acmicpc.net/"> " 백준 온라인 저지 " </a> <br>
      	<a href="https://programmers.co.kr/">" 프로그래머스 "</a> <br>
      	<a href="https://www.codewars.com/"> " 코드워즈 " </a> <br>
      	<a href="https://www.codility.com/"> " 코딜리티 "</a> <br>
    </div>
    
 

      <div class="title lang">프로그래밍 언어</div>
     
      <div class="main">
      <p>C/C++</p>
      C언어는 기본이 되는 언어로, 운영체제나 언어 처리계 등의 시스템 기술에 적합한 프로그래밍 언어이다. C언어의 탄생은 1972년 새로운 버전의 유닉스(Unix) 개발을 위한 것이라 볼 수 있으며 C 언어는 리소스가 부족한 기계에서 작동할 때 유용하다는 특성이 있다.<br> <br>
      C++은 1985년 출시된 것으로 C 언어의 확장판으로 볼 수 있다. C언어를 기반으로 속도나 효율성 저하를 개선하였으며 객체 지향 프로그래밍(object-oriented programming) 기능을 추가하여 더 고차원적인 프로그래밍이 가능하다.
      
      <p>Python</p>
      파이썬은 인터프리터 방식의 프로그래밍 언어이며, 1991년에 발표되었다. 문법이 단순하여 초보자들의 학습용 언어로 많이 추천되며, 실사용률과 생산성 역시 높은 언어이다. 강력한 라이브러리를 보유하여 데이터를 수집하고 분석하기 용이하며, 보다 직관적인 언어로 사용하기 쉽다.<br>
      
      <p>Java</p>
       자바는 객체 지향 프로그래밍 언어이며, 1995년에 썬 마이크로시스템즈에 의해 개발되었다. JAVA는 플랫폼에 독립적인 언어로, 소스 코드를 기계어로 직접 컴파일하여 링크하는 방식의 다른 컴파일러와 달리 자바 컴파일러는 바이트코드인 클래스 파일(.class)을 생성하고, 이 파일의 바이트 코드를 읽은 뒤 기계어로 바꾸어 자바 가상 머신 상에서 실행한다.<br>
      <p>JavaScript</p>
      HTML, CSS와 함께 웹을 구성하는 요소 중 하나이며 프로토타입 기반의 프로그래밍 언어로, 스크립트 언어이다. 거의 모든 웹 브라우저에 인터프리터가 내장되어 있으며, 웹 페이지강 동적한느 것을 담당한다고 볼 수 있다.<br>
      <p>HTML</p>
      HTML은 웹사이트의 구조나 서식을 위한 마크업 언어로 프로그래밍 언어가 아니다. 이 HTML은 웹 개발에서 매우 중요한 언어이며, 태그(Tag)를 통해 여러 기능을 사용한다. HTML은 서버의 정보대로 페이지를 나타내는 것에는 강하지만, 사용자의 요구에 따라 민감하게 반응하는 것에 있어서는 약한 편이며, 동적인 화면 구성에 적합하지 않기 때문에 JavaScript 등의 각종 스크립트의 도움을 받는다.<br>
      
      <p>CSS</p>
      CSS는 마크업 언어(HTML 등)로 작성된 문서가 실제로 웹사이트에 어떻게 나타날지 정해주는 스타일 시트 언어이다. 과거에는 HTML로 디자인적 요소까지 모두 포함하여 작성하였지만, 디자인적 요소까지 모조리 포함된 문서는 구조화된 문서로 보기 어려웠고 HTML 소스코드의 가독성이 떨어지는 문제가 있었다. 따라서 W3C에서는 디자인적 요소를 HTML과 분리시키기 위해 CSS를 발표하였으며, 이를 계기로 디자인에 필요한 부분은 CSS가 전담하기 때문에 용도의 구분이 명확해지고, 파일로 구분하는 것까지 가능하여 웹페이지의 수정, 보완이 훨씬 용이해졌다.<br>
      <p>React</p>
      React는 메타에서 개발한 오픈 소스 자바스크립트 라이브러리로 프론트엔드 개발자 사이에서 많은 인기를 얻고 있는 언어이다. 리렌더링이 잦은 동적인 모던 웹에서 빠른 속도의 퍼포먼스를 내는 것이 가능하며, 모듈형 개발이 가능한 언어기 때문에 생산성 또한 높은 라이브러리로 널리 사용되고있다.<br>
      
      <p>Node.js</p>
      Node.js는 JavaScript로 브라우저 밖에서 서버를 구축하는 등의 코드를 실행할 수 있게 해주는 런타임 환경이며, JavaScript라는 프론트 엔드 언어로 백엔드까지 작성할 수 있다는 장점이 있어 널리 사용되고 있다.<br>
      </div>
      
      
      <div class="title hard">하드웨어</div>
      
      <div class="main">
     <br>
      하드웨어는 모니터, 하드디스크, 프린터 같은 컴퓨터와 관련된 모든 물리적 장치로 입력 기능, 출력 기능, 처리 기능, 저장 기능을 담당한다.
      <p>컴퓨터구성</p>
      컴퓨터를 구성하는 핵심요소에는 CPU(중앙처리장치), 메모리(주기억장치), 보조기억장치, 입출력 장치 4가지로 구성되어 있다. <br><br>
      [ 입력장치 ]<br>

 외부로부터 문자, 소리, 그림, 영상 등의 데이터를 전달받는 장치로 키보드, 마우스, 스캐너가 대표적이다.<br><br>
 
 [ 출력장치 ]<br>
 수행된 결과를 문서나 그림 형태로 사용자에게 전달하는 장치로, 모니터와 프린터가 대표적이다.<br><br>
 
 [ 중앙처리장치 ]<br>
 중앙처리장치는 프로세서 라고도 불리는데, 입력된 데이터를 연산하여 결과를 얻기 위한 장치로 컴퓨터에서 가장 핵심적인 역할을 한다. 중앙처리장치의 내부는 제어장치 와 연산장치 로 구성된다.
<br><br>

[ 제어장치 ] <br>
중앙처리장치와 기억장치 사이에서 프로그램 명령과 데이터 입출력을 제어한다. <br><br>

[ 연산장치 ]<br>
산술연산과 논리연산(2진 데이터 0과 1을 대상으로 하는 논리합, 논리곱, 부정, 배타적 논리합 등) 을 수행한다.<br><br>

      <p>컴퓨터구조</p>
      컴퓨터 구조를 학습하면 프로그램 언어가 실행되는 방식을 이해하는 데 많은 도움을 얻을 수 있다. 컴퓨터 구조란 명렁어 세트의구조, 프로세서, 메모리, 입출력 등의 시스템 구성, 그리고 마이크로 구조들을 포함한 전반적인 것들을 의미한다.<br>
      <p>운영체제</p>
      운영체제(Operating System, OS)는 컴퓨터 시스템의 핵심 소프트웨어로, 하드웨어 자원을 관리하고 응용 프로그램이 하드웨어와 상호작용할 수 있도록 지원한다. 주요 기능으로는 자원 할당, 프로세스 관리, 파일 시스템, 메모리 관리 등이 있다. 일반적인 운영체제로는Windows, macOS, Linux 등이 있으며, 서버에서는 주로 Linux 계열의 운영체제가 많이 사용된다.<br>
      
      <p>임베디드 시스템</p>
      임베디드 시스템은 특정한 기능을 수행하기 위해 설계된 컴퓨터 시스템으로, 주로 소형이며 특정한 임무를 수행한다. 자동차의 제어 시스템, 의료 기기, 가전제품, 산업용 로봇 등에 사용된다. 이러한 시스템은 주변 환경과 상호작용하며 주로 실시간성이 중요한 경우가 많다.<br>
      <p>라즈베리파이</p>
      라즈베리 파이는 영국의 라즈베리 파이 재단이 개발한 저렴한 가격의 싱글보드 컴퓨터이다. 크기는 신용카드 크기 정도로 작고, 저렴한 가격에 다양한 기능을 제공한다. 주로 교육용으로 사용되며, 리눅스 기반 운영체제를 실행하여 다양한 프로젝트에 활용된다. 라즈베리 파이는 IoT 프로젝트, 미디어 센터, 개인 서버, 로봇 제어, 학습용 컴퓨터 등 다양한 용도로 활용된다.
이 기술들은 모두 컴퓨터 공학과 관련하여 다양한 분야에서 사용되며, 특히 임베디드 시스템과 라즈베리 파이는 학습과 개인 프로젝트에 많은 도움을 주는 플랫폼으로 폭넓게 활용되고 있다.<br>
      
      
      
</body>
</html>

