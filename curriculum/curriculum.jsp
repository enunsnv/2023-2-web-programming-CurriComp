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
          <li><a href="#">커리큘럼</a></li>
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
        <li class="group-title"><a href="#">학년 별 보기</a></li>
        <li class="vnav-content" id="1nd-sub"><a href="#">1학년</a></li>
        <li class="vnav-content" id="2nd-sub"><a href="#">2학년</a></li>
        <li class="vnav-content" id="3nd-sub"><a href="#">3학년</a></li>
        <li class="vnav-content" id="4nd-sub"><a href="#">4학년</a></li>
       </div>
  
  
      </ul>
  
    </div>
  
  
    <div id="vertical-line"></div>
  
  </div>


    <div class="curri">

       <div class="subject 1nd-sub">
          <p>🧠 계산적사고법</p>

          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            컴퓨터를 이용한 <b>문제해결과정을 알고리즘을 학습함</b>으로써 다양한 문제에 대하여 여러가지 응용문제를 다루며 해결하는 과정을 보여준다.
          </div>


          <div class="sub_ex">
            <span>관련언어</span><br>
            python<br>
            스크래치
          </div>
        </div>


        <div class="subject 1nd-sub">
          <p>📔 기초프로그래밍</p>

          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            이 강좌에서는 컴퓨터공학에서 가장 많이 사용하는 프로그래밍 언어인 <b>C언어를 배우고 익힌다.</b> 이 강좌에서는 C언의 문법과 C 언어를 이용해 간단한 알고리즘을 구현하게된다.
          </div>


          <div class="sub_ex">
            <span>후수과목</span><br>
            심화프로그래밍<br>
            객체지향프로그래밍<br>
            자료구조와실습<br>
            프로그래밍언어개념<br>
            데이터통신입문<br>
            심화프로그래밍<br>

            
          </div>


          <div class="sub_ex">
            <span>관련언어</span><br>
            C
          </div>
        </div>


        <div class="subject 1nd-sub">
          <p>➕ 이산구조</p>

          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            본 강좌는 컴퓨터 과학 및 <b>컴퓨터 공학과 관련된 수학적 기본 개념들과 이론들을 학습</b>하는 과목으로서, <b>대부분의 컴퓨터 관련 전공 과목들을 이수하기 위하여 필수적으로 선이수 되어야만 하는 핵심 내용</b>들로 구성된다
          </div>


          <div class="sub_ex">
            <span>후수 과목</span><br>
            컴퓨터구성<br>
            형식언어
          </div>

        </div>

      
        <div class="subject 2nd-sub">
          <p>🌐 웹프로그래밍</p>

          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            인터넷 클라이언트 / 서버환경에서 동작하는 <b>웹프로그램을 작성</b>하기 위하여 클라이언트를 위한 <b>프론트엔드 웹프로그래밍</b>과 서버에서 작동되는 <b>백엔드 웹프로그래밍</b>을 작성하는 데에 필요한 언어 및 관련 기술들을 익힙니다.
          </div>


          <div class="sub_ex">
            <span>관련과목</span><br>
            선수 : 객체지향프로그래밍<br>
            
          </div>


          <div class="sub_ex">
            <span>관련언어</span><br>
            html<br>
            css<br>
            JAVAscript<br>
            JAVA
          </div>
        </div>

        <div class="subject 2nd-sub">
          <p>👩🏻‍💻 시스템소프트웨어와실습 </p>
          <div class="sub_ex">
          <span>이런걸 배워요!</span><br>
          컴퓨터의 원리를 이해하여 다양한 <b>시스템 소프트웨어를 작성</b>하는데 필요한 능력을 기르는 과목입니다.<br>
          SIC/XE 가상 머신을 통한 <b>기계어/어셈블리어 및 링커/로더에 대해 공부</b> 하고 리눅스 GCC 컴파일러 기반의 C언어와 x86-64 기계수준의 어셈블리 프로그래밍을 이해합니다.
          </div>
          
          <div class="sub_ex">
            <span>관련과목</span><br>
            후수 : 운영체제 <br>
            후수 : 양자컴퓨팅
          </div>

          <div class="sub_ex">
            <span>관련언어</span><br>
            C<br>
            어셈블리어
          </div>
        
        </div>
        
        <div class="subject 2nd-sub">
          <p>📖 프로그래밍언어개념 </p>
          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            프로그래밍언어의 원리와 설계에 대해 학습하는 과목으로, 구문, 이름, 유형, 의미 구조 및 함수와 같은 <b>프로그래밍 언어의 기본 원리를 학습</b>합니다.<br>
            이 과목을 통해 학생들은 실험적인 언어로 작성된 프로그램을 분석하고 실행할 수 있는 해석기를 구현함으로써 실용적인 프로그래밍 언어 이론을 배우게 됩니다.
          </div>
          
          <div class="sub_ex">
            <span>관련과목</span><br>
            선수 : 기초 프로그래밍
     
          </div>

          <div class="sub_ex">
            <span>관련언어</span><br>
            JAVA를 통해 과제 수행<br>
            C/C++<br>
            python
          </div>
          
        </div>


        <div class="subject 2nd-sub">
          <p>📊 자료구조와실습</p>
          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            본 과목에서는 컴퓨터가 문제를 효과적으로 해결하기 위한 <b>자료구조와 알고리즘</b>을 소개합니다.
            학생들은 프로그래밍 언어로 이를 구현하는 방법을 배우고 연습합니다.<br>
            주제에는 <b>배열 및 연결 목록, 스택, 큐, 트리, 그래프 등</b> 데이터 검색 및 정렬을 위한 다양한 방법이 포함됩니다.
          </div>
          
          <div class="sub_ex">
            <span>관련과목</span><br>
            선수 : 기초 프로그래밍
     
          </div>

          <div class="sub_ex">
            <span>관련언어</span><br>
            C/C++를 통한 자료구조 구현<br>
          </div>
          

      </div>

     
      <div class="subject 2nd-sub">
        <p>🖥 객체지향프로그래밍</p>
          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            객체지향 프로그래밍 언어 Java를 통하여 프로그래밍 작성 기법을 학습하는 과목으로 <b>Java 언어의 기본 문법을 이해</b>하고 객체지향 프로그래밍 개념을 이해하기 위한 프로그래밍 과제를 수행하도록 합니다.<br>
             아울러 객체지향프로그래밍 응용을 위해 네트워크 프로그래밍과 데이터베이스 프로그래밍을 연계하여 학습하고 과제를 진행합니다.

          </div>
          
          <div class="sub_ex">
            <span>관련과목</span><br>
            선수 : 기초 프로그래밍<br>
            후수 : 웹프로그래밍 <br>
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;소프트웨어공학개론
          </div>

          <div class="sub_ex">
            <span>관련언어</span><br>
            JAVA<br>
            ( C++ 도 객체지향언어이나, <br>
            학교 수업은 JAVA 를 통해 진행)
          </div>
        
      </div>
      <div class="subject 2nd-sub">
        <p>💿 컴퓨터구성 </p>
          <div class="sub_ex">
            <span>이런걸 배워요!</span><br>
            본 강좌는 컴퓨터공학 분야의 기본 과목 중에 하나로서 <b>전형적인 컴퓨터 시스템에서의 하드웨어적 구성</b>과 그 기본적인 동작 원리를 이해시키는데 그 목적이 있다. 논리 회로에 관한 소개도 이루어지며, 이를 이해시키기 위해논리 <b>시뮬레이터를 통하여 실습</b>을 행한다.
            </div>

          
          <div class="sub_ex">
            <span>관련과목</span><br>
            선수 : 이산구조<br>
            후수 : 컴퓨터구성
     
          </div>

          <div class="sub_ex">
            <span>관련언어</span><br>
            기계어
          </div>
        
      </div>
      <div class="subject 2nd-sub">
        <p>🔁 컴퓨터알고리즘과실습 </p>
        <div class="sub_ex">
          <span>이런걸 배워요!</span><br>
          주어진<b>문제를 해결하는 효과적인 컴퓨터 알고리즘을 설계</b> 하기 위해서는 먼저 주어진 문제를 올바르게 이해하고 주어진 입력데이터를 제대로 파악할 수 있어야한다. <br>
          그 뒤 주어진 입력 데이터의 특성과 원하는 결과를 검토한 다음에 적절한 자료구조를 결정하고, 자료의 저장형태와 필욧한 연산들을 정의한 뒤 이를 연산을 활용해 컴퓨터 알고리즘을 설계 및 구현하고 분석해야 한다. 본 강좌에서는 이러한 <b>알고리즘 설계에 필요한 능력들을 학습</b>하게 된다. 
        </div>
        
        <div class="sub_ex">
          <span>관련과목</span><br>
          선수 : 자료구조와실습<br>
          후수 : 데이터분석및실습
   
        </div>

      </div>


      <div class="subject 3nd-sub">
        <p> 🔐 공개SW프로젝트 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        공개 소프트웨어의 중요성과 사회 발전에 미치는 영향을 이해한다.<br>
        또한, 기존의 <b>공개소프트웨어를 기반으로 새로운 공개소프트웨어를 개발하는 전과정을 경험</b>한다.<br>
        공개소프트웨어 개발환경에서 공개소스를 기반으로 <b>팀단위 협업프로그래밍 과제를 수행</b>하여 <b>유용한 소프트웨어를 제작하고 이를 공개</b>한다.
        </div>
        
        <div class="sub_ex">
          <span>관련과목</span><br>
          선수 : 어드벤처디자인 <br>
          후수 : 컴퓨터공학종합설계1
        </div>

      </div>

      <div class="subject 3nd-sub">
        <p> 📱 컴퓨터그래픽스입문 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        컴퓨터 그래픽스는 컴퓨터를 이용해 정보를 가시화하고 새로운 기하 정보와 영상 정보를 생성하는 데 사용되는 모든 종류의 기술들을 다루는 분야이다.<br> 게임 프로그래밍, 영화 특수효과, 삼차원 애니메이션, 가상현실, 3D 프린팅 등 다양한 분야에서 활발히 사용되면서 점점 더 그 가치가 커져가고 있다.<br> 본 과목에서는 <b>기하 모델링, 랜더링, 컴퓨터 애니메이션 등의 기초적인 그래픽스 이론을 학습하고 실시간 삼차원 그래픽스를 중심으로 응용 프로그래밍을 연습</b>한다.
        </div>
        
      </div>

      <div class="subject 3nd-sub">
        <p> 🐋 데이터베이스시스템 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        데이터베이스 시스템 개념에 대한 강좌로 데이터베이스 시스템 개요, 데이터베이스 모델링, 관계 데이터 모델, 관계 언어, SQL, 저장 및 인덱싱, 질의 처리 개요 등에 대하여 공부한다.<br> 이 강좌는 <b>데이터베이스 설계와 데이터베이스 프로그래밍에 기본</b>이 되는 강좌이다.
        </div>
        
      </div>

      
      <div class="subject 3nd-sub">
        <p> 💬 형식언어 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        <b>컴파일러의 기본 구조</b>를 소개하고 각 단계를 자동적으로 구현하기 위한 형식언어 이론을 강의한다. 먼저, 정규 언어(Regular language)를 중심으로 정규 문법, 정규 표현 그리고 인식기인 유한 오토마타(Finite automata)의 관계를 학습하고 이와 같은 이론을 바탕으로 어휘 분석기(Lexical analyzer)를 구현한다.<br> 다음으로, 구문 분석(Syntax analysis)을 위한 Context-free 문법의 여러 가지 속성을 공부하고 그의 인식기인 푸시다운 오토마타(Pushdown automata) 이론을 학습한다. 이와 같은 이론을 바탕으로 <b>컴파일러의 파싱 방법을 익히고 파서를 구현할 수 있는 능력</b>을 기른다.
        </div>

                
        <div class="sub_ex">
          <span>관련과목</span><br>
          선수 : 이산구조 <br>
          후수 : 컴파일러 구성
        </div>
        
      </div>

      
      <div class="subject 3nd-sub">
        <p> ⚙️ 운영체제 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        본 강의는 <b>컴퓨터 시스템의 하드웨어 리소스를 관리하는 운영체제의 기본 개념 및 구조를 학습</b>한다. <br> 프로세스 관리(process management), 동기화(synchronization), 데드락(deadlock), 메모리 관리(memory management)에 대한 이론과 알고리즘을 이해한다. 본 강의를 통해 리소스를 효율적으로 관리하는 방법을 프로그래밍 언어로 구현해봄으로써 응용 문제 해결 능력을 향상시킨다.<br>
        </div>
                
        <div class="sub_ex">
          <span>관련과목</span><br>
          선수 : 시스템소프트웨어와실습 <br>
          후수 : 임베디드소프트웨어입문
        </div>
        
      </div>


      <div class="subject 3nd-sub">
        <p> 👩🏻‍🏫 소프트웨어공학개론 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        <b>소프트웨어를 개발하고 유지보수하는 데 적용되는 체계적이며 원리적인 접근 방법을 소개</b>한다.<br> 소프트웨어를 개발하는 프로젝트를 계획하는 기법, 사용자의 요구를 분석하는 기법, 소프트웨어 구조를 설계하는 기법, 모듈과 사용자 인터페이스를 설계하는 기법, 코딩 스타일, 테스팅 기법, 유지보수 기법, 소프트웨어 품질 보증 활동을 다룬다.
        </div>
                
        <div class="sub_ex">
          <span> 관련과목</span><br>
          선수 : 객체지향프로그래밍<br>
          
        </div>
        
      </div>


      <div class="subject 3nd-sub">
        <p> 📡 데이터통신입문 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        <b>데이터 통신의 기본 개념</b>을 공부한다. 아날로그 또는 디지털로 표현된 데이터를 송신자에서 통신로를 통해 수신자로 전송할 때 발생하는 문제점과 그에 대한 다양한 해결책을 공부한다. <br>데이터와 신호 개념, 수학으로 표현되는 유무선의 통신로의 특성, 그리고 전송 알고리즘을 배운다.<br> Modem, Codec, Hub, Bridge, Ethernet, Wireless LAN 등의 전송기기의 동작원리를 공부한다.
        </div>
                
        <div class="sub_ex">
          <span> 관련과목</span><br>
          선수 : 기초프로그래밍<br>
          
        </div>
      </div>

      <div class="subject 4nd-sub">
        <p> 🏁 객체지향설계와패턴 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        고층빌딩을 지을 때 수많은 설계도면을 그리는 것처럼 상품이 될 대규모 소프트웨어를 개발하려면 수많은 추상적 표현이 필요하다. <br> 
        또한 시스템의 구조적 측면, 행위적 측면, 자료적 측면 등 여러 특성에 대한 설계 의사결정과 문서 작성이 필요하다. <br>
        이 강좌에서는 <b>소프트웨어 설계를 위한 분석, 표현 및 구현 방법</b>을 배운다. <br> 
        특히 <b>소프트웨어의 아키텍처 설계와 객체지향 프로그래밍을 위한 설계 패턴에 집중</b>한다.
        </div>
        <div class="sub_ex">
          <span> 관련과목</span><br>
          선수 : 객체지향프로그래밍<br>
        </div>
      </div>


      <div class="subject 4nd-sub">
        <p> 🔓 컴퓨터보안 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        <b>다양한 컴퓨팅 환경에서의 멀티미디어 콘텐츠에 대한 권리를 안전하게 보호하고 체계적으로 관리하기 위한 멀티미디어 콘텐츠 보안기술의 기본 개념 및 이론을 학습</b>한다. <br>
        구체적인 학습 내용은 DRM(Digital Rights Management, 디지털 저작권 관리), CAS(Conditional Access System, 제한 수신 시스템), CP(Copy Protection, 복제 방지), 워터마킹(Watermarking) 등과 같은 멀티미디어 콘텐츠 보안 기술들을 학습한다. <br>
        멀티미디어 콘텐츠 기술들은 다양한 응용분야에 적용되어 <b>융합적 컴퓨팅 인프라를 안전하게 제공하는 이론과 기술들을 습득</b>하게 된다.
        </div>
      </div>


      <div class="subject 4nd-sub">
        <p> 🖇 컴퓨터네트워킹 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        IP, TCP, UDP 등의 인터넷 전송 프로토콜과 E-mail, DNS(Domain Name System), 웹 등 <b>인터넷의 다양한 응용 프로토콜을 공부</b>한다. <br>
        다양한 네트워크를 하나의 가상 네트워크로 통합하는 IP, 다양한 서비스를 제공하는 TCP와 UDP, 다양한 라우팅 알고리즘들을 배운다.<br>
        또한 소켓 프로그램 기법을 실습하며 다양한 컴퓨터 네트워크 보안 알고리즘들을 소개한다.
        </div>
      </div>


      <div class="subject 4nd-sub">
        <p> 🧑🏻‍💻 컴퓨터공학종합설계1 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        본 강좌는 <b>전공교육과정을 통해 습득한 지식을 바탕으로, 목표하는 기능과 성능을 포함한 제반 요구조건들을 만족하도록 시스템을 고안하는 과정을 수행하는 종합설계 교과목</b>이다.<br>
        현대적인 설계이론과 함께 설계문제 모델링, 선행기술 조사, 아이디어 생성, 비교분석, 계획서 작성, 협업적 설계 등을 교육하며, 학생들은 팀을 구성하여 팀별로 특정한 주제에 관한 프로젝트를 수행한다.
        </div>
        <div class="sub_ex">
          <span> 관련과목</span><br>
          선수 : 공개SW프로젝트<br>
          후수 : 컴퓨터공학종합설계2
        </div>
      </div>

  
      <div class="subject 4nd-sub">
        <p> 🖥 컴퓨터공학종합설계2 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        본 강좌는 <b>전공교육과정을 통해 습득한 지식을 바탕으로, 목표하는 기능과 성능을 포함한 제반 요구조건들을 만족하도록 시스템을 개발하는 과정을 수행하는 종합설계 교과목</b>이다.<br>
        컴퓨터공학종합설계1에 연이어 시스템 구현, 테스트, 상세 시스템 명세, 보고서 작성, 공학윤리 등을 교육하며, 학생들은 팀을 구성하여 팀별로 특정한 주제에 관한 프로젝트를 수행한다.
        </div>
        <div class="sub_ex">
          <span> 관련과목</span><br>
          선수 : 컴퓨터공학종합설계1<br>
        </div>
      </div>

      <div class="subject 4nd-sub">
        <p> 🚨 시큐어코딩 </p>
        <div class="sub_ex">
        <span>이런걸 배워요!</span><br>
        시큐어 코딩은 프로그램의 잠재적인 보안약점을 제거하여 안전한 소프트웨어를 만들기 위한 개념이다. <br>
        본 수업에서 학생들은 <b>보안약점과 시큐어 코딩의 기본 개념에 대해 이해하고, 이를 실제로 SW개발에 적용하여 취약한 코드를 진단하고 제거하기 위한 기법을 학습</b>한다.
      </div>
      </div>
    </div>
 
</body>
</html>

<script>

  // Select-view 기능 구현
 const classNames = ['1nd-sub', '2nd-sub', '3nd-sub', '4nd-sub'];

 // 클릭 이벤트 핸들러 함수
 function handleSubClick(index) {
   for (let i = 0; i < classNames.length; i++) {
     const subs = document.getElementsByClassName(classNames[i]);
     for (let j = 0; j < subs.length; j++) {
       subs[j].style.display = i === index ? 'block' : 'none';
     }
   }
 }


 for (let i = 0; i < classNames.length; i++) {
   document.getElementById(classNames[i]).addEventListener('click', function(event) {
     event.preventDefault();
     handleSubClick(i);
   });


}

</script>