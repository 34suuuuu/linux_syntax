# 사용자 추가
sudo useradd 사용자명
# 패스워드 지정
sudo passwd 사용자명 
# 사용자 목록 조회
cat /etc/passwd

# 사용자 전환 : 비밀번호는 전환하고자 하는 사용자 비밀번호
su - 사용자명

# 파일 권한 관리
# 권한은 3개의 파트 (user:group:others)로 구성되어있고, 각 권한은 r(4)w(2)x(1)
chmod 777(숫자) test.sh
chmod u+x test.sh
chmod g-w test.sh

# 파일 소유자/그룹 관리
# 소유자의 그룹 변경
chown 소유자:그룹 파일명