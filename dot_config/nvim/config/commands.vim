command Xiosetup :Start /home/smichaud/Workspace/pipe-inspection/tools/tmux-all.sh setup ; tmux a
command Xiorun :Start /home/smichaud/Workspace/pipe-inspection/tools/tmux-all.sh run ; tmux a
command Xiobl :Start (cd ~/Workspace/pipe-inspection/frontend/ && yarn build:libs)
command Xioao :!xdg-open "https://local.xpectio.ca:3001/"
command Xiopr :!xdg-open "https://dev.azure.com/xpectio/SewerInspection/_git/pipe-inspection/pullrequests?_a=active"

command Gitfa :Git fetch --all 
command Gitmom :Git merge origin/master 
command -nargs=1 Gitcam :Git commit -am 
command -nargs=* Gitco :Git checkout 
command -nargs=1 Gitcb :Git checkout -b
command Gitps :Git push
command Gitpl :Git pull
command -nargs=* Gitz :Git stash


