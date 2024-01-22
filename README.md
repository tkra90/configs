##  🍿 Configs
### 📖 Additional setup, useful links:
 - [Iterm](https://iterm2.com)
 - [GIT+SSH easy setup](https://sourabhbajaj.com/mac-setup/Git/README.html)
 - Add the Key to the SSH Agent `ssh-add -K /Users/.../.ssh/id_rsa`, verify: `ssh-add -l`
 - [Oh My Zsh + PowerLevel10k](https://dev.to/abdfnx/oh-my-zsh-powerlevel10k-cool-terminal-1no0)
 - to add custom aliases with Oh My Zsh, `vim ~/.zshrc`, add alias, then `source ~/.zshrc`

### 👨‍💻 Quick Mac setup
- `brew install tig`
- `brew install tmux`
- [itsycal](https://www.mowglii.com/itsycal/)
- [spectacle](https://www.spectacleapp.com)

### :whale: Docker
- Docker config with JupyterLab
- `docker-compose up --scale jupyterlab-cuda=1 --scale mongo=1`

### MongoDB & Atlas VectorSearch:
- set up local Atlas cluster, on mongo Docker: `atlas deployments setup`
- create Atlas Database, then authorize
- list deployments: `atlas deployments list`
- connect: `atlas deployments connect`
- create atlas vector searc online, or use cli: `atlas deployments search indexes create`

### Adminer
- access Postgres: `http://127.0.0.1:3080/?pgsql=tkra_postgres`, username: postgres, pwd: in docker_compose

