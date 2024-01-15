

/*:
 2 Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.\
 



 \
git status:\
告诉你哪些文件已被修改、哪些文件已被暫存。
 
 \
git diff:\
顯示工作目錄和 提交區(or之前commit)的差異。
 
 \
git add:\
將目前工作目錄中的文件加到暫存區，通常會用git add .來將所有文件加入暫存區。

 \
git reset：\
前往某次commit的狀態，
 git reset HEAD <檔案>，是保留某個檔案在工作目錄的修改，但是不打算commit它，所以從暫存區中移除，
 git reset HEAD，是將所有檔案從暫存區移除。

 \
git commit:\
提交當前暫存區中的文件到本地儲存庫，可以使用 git commit -m ""來直接寫入commit要備註的內容。

 \
git log:\
顯示所有過去的commit，包含人和時間以及commit message。\
 git log -p顯示每次commit的差異。\
 git log --oneline只顯示commit message。\
 git log --graph以圖形方式顯示分支和合併的歷史。
 
 \
git branch:\
他會列出所有的分支，目前所使用的分支前面會有＊，\
 新增分支的話可以用git branch <分支名字>，\
 改名的話可以用git branch -v <舊的分支名字> <新的分支名字>。
 
 \
git merge:\
將兩個分支合併。\
git checkout <目標分支>（通常是master或main)，
合併指定分支到目標分支。\
git merge <要合併的分支>。
 
 
 \
git push [ repo_name ] [ branch_name ]:\
從本地變更到遠端儲存庫的過程。\
 repo_name 是遠端的名字，通常叫做origin。\
 branch_name是本地的分支通常叫做main。
 
 
 \
git remote:\
 管理遠端儲存庫的指令。\
 git remote -v可以看目前配置的遠端儲存庫URL。

 
 
 
 \
fork:\
 將自己遠端儲存庫複製到他人遠端儲存庫的過程，他人遠端儲存庫如果要和我的遠端儲存庫合併則叫做pull request。
 
 
 
 \
git rebase:\
 git rebase <另一個支線或提交>。\
 和merge的差異是，merge是兩個最後的commit接在一起，rebase是整條支線可以指定接在主支線的任何commit。

 
 
 
 \
git cherry-pick:\
 將其他分支的指定提交應用到目前分支。\
 git cherry-pick <commit的hash值>
 
 
 
 \
git reflog:\
 顯示本地儲存庫的HEAD和分支的歷史記錄。
 
 \
git tag:\
 給某個提交打上標籤，標記重要的版本。\
 像是git tag v1.0
 
 
 
 \
3.Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
 
 
 \
1.git init 來建立本地端的repo\
 2.git remote add origin <github repo的網址>，將本地repo和遠端repo連結起來\
 3.git add . 放到staging area\
 4.git commit 提交到本地的repo\
 5.git push origin main 上傳到遠端的repo也就是github
 
 
 
 
 
 */












