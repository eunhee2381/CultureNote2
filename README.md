# CultureNote
영화, 도서, 공연, 전시를 보고 난 이후 후기를 기록으로 남겨둘 수 있는 앱이다. 

![x](https://img.shields.io/badge/Xcode-007ACC?style=for-the-badge&logo=Xcode&logoColor=white)
![sw](https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white)
![f](https://img.shields.io/badge/Firebase-039BE5?style=for-the-badge&logo=Firebase&logoColor=white)

<b>[youtube 소개 영상]</b>

=> https://youtu.be/_jNtg8Hw-rA

## 첫번째 탭 - 영화

관람한 영화의 제목, 감독, 평점, 후기 등을 기록할 수 있고, 
영화의 포스터 이미지도 저장할 수 있다.

<img width="250" alt="영화 목록" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/6062e4d4-67f9-4abf-ac87-81789d18c53c">
<img width="250" alt="영화 추가" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/fdf3ba02-3ce9-4185-9397-456d1238fd81">

- <b>영화 목록 뷰</b>

  상단 네비게이션바에는 제목과 추가버튼이 있다.
  
  추가 버튼을 클릭하면 영화를 추가할 수 있는 뷰로 이동을 한다.
  
  가운데는 테이블뷰로 목록을 볼 수 있도록 구현을 했다.
  
  하단 탭바컨트롤러 4개의 탭 중 첫번째 탭이 영화 탭이다.

- <b>영화 추가/수정 뷰</b>

  상단 네비게이션 바에는 취소/저장 버튼과 제목이 있다.
  
  이 제목은 추가와 수정의 용도에 따라 변경되도록 했다.
  
  필요한 내용에 따라 TextField, DatePicker, Slider, TextView, ImageView 등을 적절히 배치했다.

  요소들을 적절히 stackview로 묶었고, 뷰 밖으로 나가는 부분은 scrollview로 해결하고 constraint를 적용했다.

  이미지 버튼을 통해 영화 포스터를 등록할 수 있고, 등록하면 하단 이미지뷰에서 이미지를 볼 수 있다.

  

## 두번째 탭 - 도서

읽은 책의 제목, 작가, 출판사, 독후감 등을 기록할 수 있고,
책 표지의 이미지도 저장할 수 있다. 

<img width="250" alt="도서 목록" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/063672e5-e0ff-4ed6-a9db-f6c56208469a">
<img width="250" alt="도서 추가" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/7ba90b9e-93ad-41b8-b36c-a03b616d9b6a">

- <b>도서 목록 뷰</b>

  상단 네비게이션바에는 제목과 추가버튼이 있다.
  
  추가 버튼을 클릭하면 도서를 추가할 수 있는 뷰로 이동을 한다.
  
  가운데는 테이블뷰로 목록을 볼 수 있도록 구현을 했다.
  
  하단 탭바컨트롤러 4개의 탭 중 두번째 탭이 도서 탭이다.

- <b>도서 추가/수정 뷰</b>

  상단 네비게이션 바에는 취소/저장 버튼과 제목이 있다.
  
  이 제목은 추가와 수정의 용도에 따라 변경되도록 했다.
  
  필요한 내용에 따라 TextField, DatePicker, TextView, ImageView 등을 적절히 배치했다.

  요소들을 적절히 stackview로 묶었고, 뷰 밖으로 나가는 부분은 scrollview로 해결하고 constraint를 적용했다.

  이미지 버튼을 통해 책 표지 이미지를 등록할 수 있고, 등록하면 하단 이미지뷰에서 이미지를 볼 수 있다.
  

## 세번째 탭 - 공연

뮤지컬, 연극, 콘서트 등의 공연을 관람한 이후,
공연명, 날짜, 좌석, 후기 등의 정보를 기록할 수 있고,
공연 포스터 이미지도 저장할 수 있다. 

<img width="250" alt="공연 목록" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/4a70834e-409f-4064-b05a-c63cc964eb0b">
<img width="250" alt="공연 추가" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/e8a63332-a34c-4ab8-9ab8-61bcee42bc8f">

- <b>공연 목록 뷰</b>

  상단 네비게이션바에는 제목과 추가버튼이 있다.
  
  추가 버튼을 클릭하면 공연을 추가할 수 있는 뷰로 이동을 한다.
  
  가운데는 테이블뷰로 목록을 볼 수 있도록 구현을 했다.
  
  하단 탭바컨트롤러 4개의 탭 중 세번째 탭이 공연 탭이다.

- <b>공연 추가/수정 뷰</b>

  상단 네비게이션 바에는 취소/저장 버튼과 제목이 있다.
  
  이 제목은 추가와 수정의 용도에 따라 변경되도록 했다.
  
  필요한 내용에 따라 TextField, DatePicker, TextView, ImageView 등을 적절히 배치했다.

  요소들을 적절히 stackview로 묶었고, 뷰 밖으로 나가는 부분은 scrollview로 해결하고 constraint를 적용했다.

  이미지 버튼을 통해 공연 포스터를 등록할 수 있고, 등록하면 하단 이미지뷰에서 이미지를 볼 수 있다.


## 네번째 탭 - 전시

관람한 전시의 전시명, 장소, 날짜, 후기 등을 기록할 수 있고,
전시의 이미지도 저장할 수 있다. 

<img width="250" alt="전시 목록" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/448e1fd1-801c-45e2-b84b-4a222c0661a0">
<img width="250" alt="전시 추가" src="https://github.com/eunhee2381/CultureNote2/assets/101641472/bc6253ee-6f09-43b3-8975-a843d7c4ecb1">

- <b>공연 목록 뷰</b>

  상단 네비게이션바에는 제목과 추가버튼이 있다.
  
  추가 버튼을 클릭하면 전시를 추가할 수 있는 뷰로 이동을 한다.
  
  가운데는 테이블뷰로 목록을 볼 수 있도록 구현을 했다.
  
  하단 탭바컨트롤러 4개의 탭 중 네번째 마지막 탭이 전시 탭이다.

- <b>도서 추가/수정 뷰</b>

  상단 네비게이션 바에는 취소/저장 버튼과 제목이 있다.
  
  이 제목은 추가와 수정의 용도에 따라 변경되도록 했다.
  
  필요한 내용에 따라 TextField, DatePicker, TextView, ImageView 등을 적절히 배치했다.

  요소들을 적절히 stackview로 묶었고, 뷰 밖으로 나가는 부분은 scrollview로 해결하고, constraint를 적용했다.

  이미지 버튼을 통해 공연 포스터를 등록할 수 있고, 등록하면 하단 이미지뷰에서 이미지를 볼 수 있다.

