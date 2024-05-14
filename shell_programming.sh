# 스크립트 파일 생성
touch test.sh

# if문
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    ehco "hello world2"
fi

# if문과 변수 활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="second_file.txt"
if [ -f "$file_name" ];then
    echo "$file_name exits"
else 
    echo "$file_name does not exits"
fi

# for문 기본
for a in {1..100}
do
    echo "hello world$a"
done

# 실습과제1
# 1. 시작할 때 script start 문구 출력
# 2. 홈디렉토리에서 my_dir4 생성
# 3. my_dir4에서 file1.txt, file2.txt 파일 생성
# 4. file1.txt에 “hello file1”입력, file2.txt에 “hello file2”입력
# 5. file1은 file1_backup.txt로 백업파일 보관
# 6. file2는 file2_rename.txt로 파일명 변경
# 7. script end 문구 출력하면서 종료
echo "script start"
cd 
mkdir my_dir4
cd my_dir4
touch file1.txt
touch file2.txt
echo "hello file1" > file1.txt
echo "hello file2" > file2.tt
cp file1.txt file1_backup.txt
mv file2.txt file2_rename.txt
echo "script end"


# 실습과제2
# if문 실습 → 이동은 불가능할듯 
# 1. echo로 start 문구 출력
# 2. test_dir 있으면 이동 없으면 생성 후 이동
# 3. test4.txt없으면 생성
# 4. 해당 파일에 
#     hello world1
#     hello world2
#      …
#     hello world100까지 입력    
# 5. echo로 end 출력
echo "Start"
if [-d test_dir ];then
 cd test_dir
else
 mkdir test_dir
 cd test_dir
fi
if [ -f test4.txt ];then
 echo "test4.txt exist"
else
 touch test4.txt
fi

for a in {1..100}
do 
 echo "hello world$a"
 done
echo "end"

# for문 활용한 count 세기
count=0
for a in {1..100}
do
 ((count++))
done
 echo "count is $count"

# for문 활용한 모든 파일, directory 목록 출력하기
for a in *
do
 echo "a is $a"
done

# for문 활용한 file의 개수와 directory의 갯수세기
file=0
dir=0
for a in *
do
 if [ -f $a ];then
  ((file++))
 else
  ((dir++))
done
 echo "file count is $file"
 echo "dir count is $dir"