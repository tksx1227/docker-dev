# Git config
git config --global user.name <git_user_name>
git config --global user.email <git_email>

git config --global alias.st status
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.log1 "log -n 1"
git config --global alias.log2 "log -n 2"
git config --global alias.log3 "log -n 3"
git config --global alias.logo "log --oneline"

# Vim config
vim -c PlugInstall -c q -c q
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale 
git clone https://github.com/4nm1tsu/norminette-ale.git ~/norminette-ale
mv ~/norminette-ale/norminette.vim ~/.vim/plugged/ale/ale_linters/c/norminette.vim && \
mv ~/norminette-ale/norminette_cpp.vim ~/.vim/plugged/ale/ale_linters/cpp/norminette.vim && \
rm -rf ~/norminette-ale
