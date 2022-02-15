command Xiosetup :silent exec "!kitty /home/smichaud/Workspace/pipe-inspection/tools/tmux-all.sh setup &"
command Xiorun :silent exec "!kitty /home/smichaud/Workspace/pipe-inspection/tools/tmux-all.sh run &"
command Xiobl :silent exec "!kitty tmux new-session -s xiobl "(cd ~/Workspace/pipe-inspection/frontend/ && yarn build:libs)" &"
command Xioao :silent exec "!xdg-open 'https://local.xpectio.ca:3001/'"
command Xiopr :silent exec "!xdg-open 'https://dev.azure.com/xpectio/SewerInspection/_git/pipe-inspection/pullrequests?_a=active'"

command Gitfa :Git fetch --all 
command Gitmom :Git merge origin/master 
command -nargs=1 Gitcam :Git commit -am 
command -nargs=* Gitco :Git checkout 
command -nargs=1 Gitcb :Git checkout -b
command Gitps :Git push
command Gitpl :Git pull
command -nargs=* Gitz :Git stash

command CpFilename :silent exec "!echo % | xclip -selection clipboard"
