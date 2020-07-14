# A.I dear

## 개요
* 프로젝트 명: A.I dear

* 일정: 20.06.22 ~ 20.07.09/유지보수:20.07.09 ~

* 팀 구성: 신희대, 김민우, 최원희, 고준형, 김동욱

* 목적: 최근 급격히 성장하는 4차혁명과 더불어 COVID-19사태에 의해 대두되는 '언택트'시대에 알맞은 아이디어, 재능 오픈 플랫폼이다. 
편견과 차별이 없는 공간에서 개인의 역량을 십 분 발휘하여 기업에는 만족을, 제공자에게는 기회를 주고자 한다.

* 사용 기술 및 개발환경
  * O/S: Windows 10(개발환경)
  * Server: Apache2, Tomcat9.0
  * DB: Mysql 8.0.15
  * Framework/flatform: Spring boot, bootstrap, jQuery, mybatis
  * Programming Language : JAVA, HTML, JavaScript
  * Tool: Eclipse, Github, Mysql Workbench
  * API: KaKao Map, summernote, Google Mail
  
## 내용
* 구현 기능
  * 로그인
  * 회원가입(이메일 인증)
  * 커뮤니티(공모전 등록, 공모전 참가, summernote)
  * 파일 다운/업로드
  * 보안(비밀번호 해싱)
  
* 팀원별 역할
  * 신희대: Frontend(공모전 리스트, 공모전 상세페이지, 공모전 입력페이지, 공모전 견적서, FAQ)
  * 김민우: Frontend(Footer, goTop)
  * 최원희: Frontend(공모전 정보입력 및 결제, 로그인, 마이페이지, 게시판 입력(문의, 공지))
  * 고준형: Frontend(Header, 메인페이지, 회원가입, 이메일인증, 컨텐츠모달창, 회원정보, 오시는 길)
  * 김동욱: DB설계, Backend 전체
  * 공통: 기획

* 설계의 주안점
  * 공모전을 생성하여 참가자들은 손쉽게 참가할 수 있다
  * 공모전 개최자는 개최기간 이후 심사기간동안 참가작들의 목록및 상세정보를 볼수 있고 우승작을 뽑을수 있다.
  * 심사기간 이후 우승작은 공개되고 나머지는 비공개 처리가 된다.
 
* 산출물
  * ERD ![ERD](/img/ERD.PNG)
  * Usecase diagram ![Usecase diagram](/img/Usecase.PNG)
  * WBS ![WBS](/img/WBS.PNG)
