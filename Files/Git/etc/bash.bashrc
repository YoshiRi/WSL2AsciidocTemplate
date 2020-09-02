# gish "コミットメッセージ" "何某かの文を入れるとPush"
gish(){
git add -A;

#引数の数に応じて分岐
if [ $# = 0 ]; then # Error
echo "Please add comment!"
elif [ $# = 1 ]; then # Commitだけ
msg=$1
git commit -m "$msg";
elif [ $# = 2 ]; then # Pushもする
msg=$1
git commit -m "$msg";
CULLENT_BRANCH=`git rev-parse --abbrev-ref HEAD`;
git push origin ${CULLENT_BRANCH};
fi
}