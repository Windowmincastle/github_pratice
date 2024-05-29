# 현재 working directory와 staging area만 상태 확인
git status


# git add : 모든 파일, 모든 수정/추가 사항 add
git add .

#git add 특정파일 :  특정 파일 add
git add 특정파일(위치포함)

#local repository에 반영 및 커밋이력 생성 여태까지 넣엇던 -m 뒤의 값은 메시지 타이틀이고
# 그 뒤에도 메시지 내용을 넣어줘야 한다.
git commit -m "메시지타이틀" -m "메시지내용"

# vi 모드에서 작성 : git commit 후 엔터 리눅스 vi 모드는 아니고


# commit 이력 확인 (local repository의 이력)
git log 

# add와 커밋을 동시에
git commit -am "add와 commit 동시에"
