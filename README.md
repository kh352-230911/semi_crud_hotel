# CRUD 호텔


## 📃 프로젝트 소개
> 코로나19 엔데믹을 기점으로 관광 사업이 상향세를 보이고 있습니다.<br>
> 이에 맞춰 해외 관광객이나 여행하는 사람을 위한 호텔예약 사이트를 만들었습니다.<br>
> 각 방의 옵션이 정해져있기 때문에 복잡한 절차 없이 간편하게 예약이 가능합니다.


## 🛠 주요 기능
1. 회원가입, 로그인, 로그아웃, 회원탈퇴, 상세페이지
3. 예약 가능한 방 조회
4. 체크인 체크아웃 날짜를 지정 후 방 예약
5. 불편사항 1:1 문의 관리자에게 전송
6. 본인이 전송한 1:1 문의의 답변 유무 조회
7. 리뷰게시판 CRUD 기능 및 댓글 작성
8. 관리자 계정에서 1:1 문의 조회 후 답변<br><br><br>

## 🧑 Team 소개
### 정용준
- 조장, DB기획 및 작성, 날짜/객실/인원 검색 조건에 맞는 방 리스트 출력, 예약, 예약페이지 디자인, 현재 객실예약 현황 확인
### 정진우
- 관리자 계정 1:1문의 답변, 호텔소개 위치정보 api, 관리자 정보 수정, 회원예약목록 조회 및 수정, 즐길거리 페이지 디자인
### 임초임
- 회원의 로그인 로그아웃 정보수정 비밀번호 변경, 로그인 시 아이디 저장, 1:1문의 요청 및 본인의 1:1문의 조회, 본인의 예약 조회 및 예약 취소, 회원탈퇴
### 오승현
- 리뷰 게시판 페이지 디자인, 글 상세보기 페이지 디자인, 게시판의 생성/수정/삭제/상세보기, 댓글작성, 첨부파일 첨부 및 다운로드<br><br><br>

## 📍 기술 스택
<!-- 
정적아이콘 및 뱃지생성 사이트
https://simpleicons.org/?q=intellij
https://shields.io/badges/static-badge

simpleicons의 로고명, 컬러를 참조해서 shields.io문법에 따라 뱃지를 만든다.

shields.io 기본문법
https://img.shields.io/badge/<텍스트>-<배경색>?logo=<로고>&logoColor=<로그컬러> 
-->

###### Frontend
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=CSS3&logoColor=white)
![Javascript](https://img.shields.io/badge/Javascript-F7DF1E?style=flat&logo=JavaScript&logoColor=white)
![jQuery](https://img.shields.io/badge/jQuery-white?style=flat&logo=jquery&logoColor=0769AD)
![TailwindCSS](https://img.shields.io/badge/TailwindCSS-white?style=flat&logo=tailwindcss&logoColor=0769AD)


###### Backend
![Servlet & JSP](https://img.shields.io/badge/Servlet_&_JSP-lightgray?style=flat&logo=data:image/png;base64,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)
![Oracle](https://img.shields.io/badge/Oracle-4479A1?style=flat&logo=oracle&logoColor=red)
![MyBatis](https://img.shields.io/badge/MyBatis-ffffff?style=flat&logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMzBweCIgaGVpZ2h0PSIzMHB4IiB2aWV3Qm94PSIwIDAgMzAgMzAiIHZlcnNpb249IjEuMSI+CjxkZWZzPgo8aW1hZ2UgaWQ9ImltYWdlOSIgd2lkdGg9IjMwIiBoZWlnaHQ9IjMwIiB4bGluazpocmVmPSJkYXRhOmltYWdlL3BuZztiYXNlNjQsaVZCT1J3MEtHZ29BQUFBTlNVaEVVZ0FBQUI0QUFBQWVDQVlBQUFBN01LNmlBQUFBQm1KTFIwUUEvd0QvQVArZ3ZhZVRBQUFFdTBsRVFWUklpZTJWVzRoVlZSakhmMnZ0Njlreng3azJuY1FiU3BNS0RVTkd6a09XRXRudG9ZZWVFaUtJQ3JRSG9TaXF4NFNJbm53cDU2R0xTUXFOcU1SZ0lLV0VraVExVFRrcWFVck5TYzh3ell6anpMbk0yWmUxVnc5enpuUThzODFCb2lmL3NQbSsvUzMyOTEvZmRjTnRKT0FENkQ0Q2cvK2xUelBKK0NGMGJZUFQxWGNKWTNmQVBZZmhlQUhPbFNGYmdzKzJ3cFZiSlpiMWhqNUk5Y0NwWG5pOGFuTmhZaENlRzRmK01seFlETTh1Z1QyM1Nnb2drb3dIb1M4REcvNkFQUWEwbXBBV0lCcGdaUWZjbTRWdlRFZy9CUTlYdjFtellrV1BiVmxQV29heFJrb1phSzEvSlFoMi8zRHAwcDhMSnU2RFZBbTJ6Y0RBVnZpMjltdy9mTndHR3pYNGo4RGFWY3VXcld1dzdWN1BkZGNaVWdvcEpZYVVHSWFCRUNJcWxzdDdwNVY2K2V6WnM4Rk5pV3RnQXczQVpOWHdNVHh6UCt6VG9IY3VXdlRlY0Z2YjZ3WFg5VVNWVUVwa25mU0Q0UHVDbEE4TkRBeUVDeVhPMkthWmRSem5uRzJhaDZWdDd4NGJHL3Z0Q1B6Y0FXdE5zQVFRQ3NHRVpYSE5zcGkwYmZLV0JVSVFDY0dNWmVFS3dVUVlmdjMreU1qbWhSSUwyelNuVTY3Ym1ISWNVbzZqYmRQTU5zZnhtWjBqSTAra2xaclhuTFg0YS9WcWRoc0duYmtjbS9ONS9VbFQwOUxlaVlrckFFWkNhdCt5RGFPOTBYRjhQNG9tcFJDYkxNdGFaWmttbG1rSzI3S2F5MEowbnZBODBlWDdOQ3VWU0dvdFc4YnlFeWY0Y21BQXU2Y0gvK0pGTVNQbG91OUtwWDZZUDA0QnNGM0JnVmpLUzNlMnRQaVo5dmJ1MXFZbTNaUk9rL1k4cEpTRVNqRW1KVzlrTXV4dmJxWXM1d2V1ZlovUlhJNlRKMDl5K3Z4NU9ydTdTY1h4ZzU3bkxVNktHT0J1cmZXNlNtY2FsbWsyT0pZbFBNZkJjMTFhMG1reXJhMDR0azJoWE9hTTYzSzBxWWtaMDZSTktkS1ZETVRGSWcxRFEyellzb1dWaGtGbmZ6K0RsbVVNU3BrUlFnd2sxYmdkdUdDYlprdktkZkZjbDFTRjFITWNValZTQXhleVdXS2w1anA0U1JUUk5UUERjdDhuRXdRNFdoTUxRZDZ5T09TNnYzeFZMTzRvRkFvSGtsYm1PUEJpcEZSZnBKUVJLWVZTaXFqdVVVcVJjbDJXZG5Ud2V5NEhXaU8wNXJKbE1lSTRpV04xclZoOHJUQTZlalNweGxVY2pMVitWU21sa2dpak9KN1QwNmtVY1J6UFBicEdyN1VwcFVJcm5UNWVKVWlxY1JXbkVDSXlwZHhrU0NsTXc1amJTTFg2WkQ3UHRVSUJJUVFJa1NpRkVQaGhPUGpUMEZCdjFYbmkzd25BTUl5WHBKUnZSMHBKUDRxd0UxSStWU3pPcHBsL0ZrS3RGRUJja1lIdjk5WDZUeUxPQUoraTlXTTZqa1VNaEVIQVZCd1RSaEZoSEJNcXhkWHBhYVpMSlF3aGtGSWl0SjZyczlDYXVDTFJHcTFVWG52ZXJoc1J0d0E3Z09lQnhyak9FVXBSS3BjcEI4RjFPMWxVWnJnK3d0cm95MEh3K2ZuaDRVSTljUmZ3RHZBbzRGVVB0TmF6alpLVVBpR3VpL0M2QzliSldLbHhsYysvV1o5V0V4Z0IxdFNTVmxFZjlWejY0dmlHdGF5enhhVWcyRDU4OWVwMHZXOEpqQUVQQUQvV0h3THpSaU91WENEV0dsMmpKOWxLNWZLdTRWeHVYNUxmNmpqNXdFZUFCYXduWWN6bXhvUGtEcTZORkNDTW9yN3M2T2dMU2FTMXhGVWNBdzRCSzRFVjFDK1ltcmxNbXRXS0hnUmgrRzV1ZlB5Vkc1RW1FY05zNnZkV0x1QXhPMTZOK2lZUm9uV2c0dmhZRklaUGowMU43ZjgzMGxvZk44TjZZS09VOGo0aHhGMVNpSlNVMHBKU2prdklZaGpIVzRyRkx5N0R6QUw5M2NiL2g3OEJPbXBvSDV3RHBDNEFBQUFBU1VWT1JLNUNZSUk9Ii8+CjwvZGVmcz4KPGcgaWQ9InN1cmZhY2UxIj4KPHVzZSB4bGluazpocmVmPSIjaW1hZ2U5Ii8+CjwvZz4KPC9zdmc+Cg==)
![Apache Tomcat](https://img.shields.io/badge/Apache_Tomcat-000000?logo=apachetomcat&logoColor=F8DC75)
![JUnit5](https://img.shields.io/badge/JUnit5-dc524a?logo=junit5&logoColor=25A162)
![Apache Maven](https://img.shields.io/badge/Apache_Maven-8a3578?logo=apachemaven&logoColor=C71A36)



###### Infra


<div style="display:flex; align-items:flext-start;">
  <img src="https://techstack-generator.vercel.app/github-icon.svg" alt="icon" width="20" height="20" />
  <img src="https://img.shields.io/badge/Github_Actions-f7f7f7?logo=githubactions&logoColor=2088FF"/>
</div>
<div style="display:flex; align-items:flext-start;">
  <img src="https://img.shields.io/badge/Oracle_Cloud-ATP-4479A1?style=squre&logo=oracle&logoColor=red"/>
</div>

<div style="display:flex; align-items:flext-start;">
  <img src="https://techstack-generator.vercel.app/docker-icon.svg" alt="icon" width="20" height="20" />
  <img src="https://techstack-generator.vercel.app/aws-icon.svg" alt="icon" width="20" height="20" />
  <img src="https://img.shields.io/badge/Ubuntu-ffffff?logo=ubuntu&logoColor=E95420"/>
</div>

###### Tools
![Intellij IDEA](https://img.shields.io/badge/Intellij_IDEA-red?logo=intellijidea)
![VS Code](https://img.shields.io/badge/VS_Code-blue?logo=visualstudiocode)
![Source Tree](https://img.shields.io/badge/Source_Tree-ffffff?style=flat&logo=sourcetree&logoColor=0052CC)
![Discord](https://img.shields.io/badge/discord-5865F2?style=flat&logo=discord&logoColor=white) 
![Notion](https://img.shields.io/badge/notion-000000?style=flat&logo=notion&logoColor=white)
