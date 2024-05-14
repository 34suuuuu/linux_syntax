# 사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd

# 현재 위치에서 파일, 폴더 목록 출력
ls

# + 자세히
ls -l

# + 숨김파일까지 출력
ls -al

# +시간순서로 정렬 등등..
ls -alrt

# 디렉토리 생성
mkdir my_dir

# 특정 디렉토리로 이동
cd my_dir

# 루트디렉토리(최상단의 디렉토리)로 이동
cd /

# 절대 경로 폴더로 이동
# 최상단 /부터 시작하기 때문에 절대경로
cd /home/suhyunpark/my_dir

# 상대 경로 폴더로 이동
# 일반적으로 ..은 1단계 상위 폴더를 의미
# .는 현재 폴더를 의미
cd ../

# 특정 계정의 home경로로 이동
# /home/계정이름
cd

# 직전 위치의 폴더로 이동
cd -

# 파일 생성 (비어있는) : 0 byte
touch first_file.txt

# 파일 내용 조회
cat first_file.txt

# 파일 내용 페이지 단위로 출력 (터미널 크기에 따라)
more first_file.txt

# 터미널창에 문자열 출력하는 명령어
# 개발자가 흔적을 남기기위해 사용되기도 함
echo "hello world"

# echo를 통해 파일에 문자열을 write하는 방법
# > 하나를 쓰면 덮어쓰기 모드,
# >> 두개를 쓰면 추가모드 (삽입)
echo "hello world" > first_file.txt

# history명령어를 통해 이전에 실행했던 명령어 조회
history

# 입력중인 명령창 정리
clear

# mv는 이동 명령어
# "mv 이동 대상 이동 된 파일명" 형식으로 사용
# mv a.txt b.txt => 사실상 파일 이름 변경
# mv a.txt ../a.txt => 파일명 그대로 상위폴더로 이동
# mv a.txt ../b.txt => 파일명 수정해서 상위폴더로 이동

# 복사 명령어는 cp, 디렉토리까지 복사시에는 -r 옵션 추가
cp second_file.txt third_file.txt

# rm은 삭제 명령어, -r옵션을 통해 디렉토리까지 삭제
# 리눅스마다 차이가 있으나 삭제할지 말지 물어보는 경우가 있는데,
# -f 옵션은 묻지않고 삭제가 가능하게 한다.
rm third_file.txt

# 묻지않고, 디렉토리까지 모두 삭제하는 명령어는
rm -rf my_dir3

# 현재 폴더에 있는 모든 파일 삭제
rm -rf *

# head는 cat처럼 파일을 출력하는 것인데, 상위 n개 행 조회
# tail은 하위 n개 행 조회
head second_file.txt # 기본은 상위 10줄
head -5 second_file.txt # 상위 5줄

# nano 편집기 사용
# window에서 사용하는 것과 동일
nano 파일명
