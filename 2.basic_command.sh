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
# commit 이후의 취소 -> 엄청 많이 쓰는 것 같다.
git reset HEAD~1
git reset HEAD^
# 워킹디렉토리에서 추가파일 취소
git clean --fdx
# 수정취소 동시에 취소
git checkout . | git clean --fdx

# push 이후의 취소 push는 아예 없엇던 일이 되는건 불가능하다. 다시 되돌리기만 가능
git revert 커밋ID

#버전별 비교 명령어 : diff
#A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitid1 commitid2 1번 시점과 2번 시점의 버젼이 무슨 차이가 있는지?

A a7895598eebb8b3
B b76b77e503fbf67977d 테스트

git diff A브랜치 B브랜치, 기준이 브랜치가 될수있다.

# 충돌을 해결할 것 이다.

#원격에 변경을 가해서 커밋을 하자.
git fetch origin master
git log
git log --all


# git fetch
git fetch --all 모든 레파지토리 정보를 가져온다 ?
# 원격에 변경사항을 로컬에 가져오되 병합은 하지 않는것


작업중인 사항을 임시저장
git stash
저장한 최신의 작업목록 꺼내기
git stash pop 
저장한 작업사항 목록조회
git stash list
저장한 작업목록 상세조회
git stash show -p 인덱스

#stash 실습
test1.txt, test2.txt 변경하기
git stash
git stash list
git stash pop

그렇게 강조하지 않겟다. 스테시

#저장한 목록은 놔둔 채 작업 목록 적용
git stash apply stash@인덱스값
#저장한 작업사항 목록조회
git stash list
#저장한 작업목록 상세조회
git stash show 
#저장한 최신의 작업목록 꺼내기
git pop

실습
원격에 커밋이력 발생 , 로컬에는 워킹디렉토리만 작업
깃 풀 -> 충돌발생 -> 임시저장 -> 머지 -> 임시저장한 내용 적용 -> add , commit , push



# 버전 명시 tagging
git tag v1.0
git tag v1.0 -m "최초 버전(주요 추가사항들을 여기적는다)"

# commit 푸시와 상관없이 태그(release) 별도 push
git push origin v.10

#태그 목록 조회
git tag

# 브랜치 생성
# 현재 checkout 하고 있는 브랜치를 기준을 브랜치 생성
git bracnh 브랜치명
# 해당 브랜치로 전환
git checkout 브랜치명
#브랜치 목록 조회 , 파란색명으로 뜨는게 지금 내가 사용하고 있는 브랜치
git branch
git branch --all 도 가능

feature/author_register

깃허브 브렌치에서 브렌치를 만들고 떙겨오는 경우가 일반적이다?

pr 올릴게 pr할게 라는 표현 많이 쓴다.

# 브랜치 생성과 전환 동시에, 가장 많이 사용하는 명령어인거같다.
git checkout -b 브랜치명
feature 브랜치 생명주기 -> merger가 끝나는 순간 사라져야될 브랜치가 된다.

로컬에서 브랜치 생성시 주의사항 : 최신화된 main에서 checkout -b 하라
=> git checkout main -> git pull -> git checkout -b feature/test

원격에서 브랜치 생성 -> 로컬에서 해당 브랜치를 fetch -> feature1, feature2

