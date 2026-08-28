**현재는 저장소가 공개되어있고, 나중에 비공개로 바뀔 예정입니다.**

## 리눅스 스터디 과제모음
1. **첫번째 스터디 과제를 올렸습니다.**
2. **두번째 스터디 과제를 올렸습니다.**  
└> 두번째 과제는 따로, 리뷰를 하지는 않습니다.
   

## 리눅스 강의 스크립트 파일 전체 모음 입니다.

### 실습 파일 다운로드 및 설정
**내 홈 디렉토리에서 아래 명령어를 사용하시면 됩니다**

```bash
curl -L "https://github.com/Jaewoo2580/kt_infra5/raw/refs/heads/main/example.zip" -o example.zip && unzip example.zip && rm example.zip
mkdir -p lab && cp example/*.sh lab/ && rm -rf example
```
mkdir 명령어는 기존에 example폴더 안에 있는 모든 *.sh를 lab폴더를 만들어서 옮기고 삭제하는 명령어 입니다.
