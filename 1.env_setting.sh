# git 프로젝트 생성방법 2가지
# 방법1. 원격 repo 생성 후 clone


# 방법2. 로컬에서부터 이미 개발된 프로젝트가 존재시에 github 업로드
# 해당 프로젝트 경로에 .git  폴더 생성
git init

# 원격지 주소를 생성 및 추가 , 정말 많이 사용하는 것.
git remote add origin <레포주소>
git remote add origin https://github.com/Windowmincastle/github_pratice.git

#원격지 주소 삭제
git remote remove origin
#원격 주소 변경
git remote set-url origin 레포주소

#남의 레포를 봣는데 너무 좋다 남의 레포를 가져오고 싶다.
#남의 깃헙 레포 주소 카피 위로 한칸 올라간다.-> git clone <주소>
# cd로 가고싶은 폴더로 이동
# 내걸로 만들고 싶으면 어떡해 ? .git 폴더를 지워버리고 내가 다시 git init하고 난 여기서부터 시작한거야
# 라고하면 된다.
# git init 하고 -> 내 깃허브에 들어가서 레포 만들고 -> git remote add origin <주소>
# git commit -m "my first pj"
# 팀 프로젝트하고나서 자기 repo에 가져올때 .git 폴더를 절대 지우면 안된다. 커밋 이력을 살려와야한다.

# git 설정정보 조회
git config --list

# push : 원격 repo에 올리는 과정
# pull : 원격에서 내려받기

# 커밋 이력
git log

# git add . 모든 변경사항 staging area로 이동
git add .

#git commit은 staging area의 변경사항을 확정짓고 commitId 생성
git commit -m "메시지"

#원격 repo에 upload
git push origin 브랜치명

#github 인증방법 2가지

# 1. token 인증방식 : github에서 직접 보안키를 발급
# 2. 제3자인증 (oauth) 방식


#사용자 지정 방법
#전역적 사용자 지정
git config --global user.name "Windowmincastle"
git config --global user.email "이메일"

# 지역적 사용자 지정

