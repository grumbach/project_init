# 42 Project Init

Starting a new project has never been simpler!

# Installation

```bash
# clone the project

git clone https://github.com/grumbach/project_init.git && cd project_init

# Setup your own path

sed -e 's:/Users/agrumbac/Documents/github/project_init:'"`pwd`"':g' project_init.bash > .TMP && mv -f .TMP project_init.bash

# Setup your own libft (change your_libft_repo)

your_libft_repo="github.com/"`whoami`"/libft"

sed -e 's:github.com/grumbach/libft:'"$your_libft_repo"':g' Makefile > .TMP && mv -f .TMP Makefile

# Make executable

chmod +x project_init.bash

# Add alias to your .bash_profile or .zshrc

echo "alias init='"`pwd`"/project_init.bash'" >> ~/.bash_profile
source ~/.bash_profile
# OR
echo "alias init='"`pwd`"/project_init.bash'" >> ~/.zshrc
source ~/.zshrc
```

Remember to use your own ```file headers```[!](https://github.com/grumbach/Piscine_CPP#git-clone-%E3%81%AE%E8%A1%93)
