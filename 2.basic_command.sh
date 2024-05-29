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

# commit 이력 확인 로컬 리포의 이력
git log가 잇고
# git log 간결하게
git log --oneline
# 전체 이력 조회, () ->해야하는 상황이 있다.
git log --all
# 로그를 그래프 형태로 조회 원라인과 그래프를 같이 쓸수잇다.
git log --graph


#원격 저장소로 업로드 브랜치명은 상관이없다. 내가 관리하는 브랜치에다가 push 한다.
git push origin 브랜치명, 

#충돌 무시하고 강제 push 하는경우? 걔는 틀렸고 내가 커밋한게 맞아!
# 하지만 정석은 원격의 내용응ㄴ 뭔지 pull 받아오고 내것과 비교하고 충돌해결하고 merge
#근데 이 상황은 내 코드가 맞아! 하고 강제 푸시하는 것 이다. 혼자 개발하다 꼬이면 하는 경우가 많다.
git push origin master --force , -> 혼자할때는 많이 쓰지만 같이할떈 쓰지마라

#특정 커밋 ID로의 전환 실무에서 중요한것 commit ID는 항상 잘 써야한다. 굉장히 중요하다.
git checkout 커밋ID
#이거 제대로 안 하면 많이 혼나거나 욕 먹을 것 이다.

#다시 현재의 master(브랜치)로 return
git checkout master

#git pull은 원격의 변경사항을 local로 다운로드 하는 것.
git pull origin 브랜치명

# git 작업 취소 case by case

# working directory에서의 취소
git checkout .
# staging area에서의 취소
git reset
# commit 이후의 취소
git reset HEAD~1
git reset HEAD^

# push 이후의 취소
git revert 커밋ID


