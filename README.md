# 42 Project Init

Starting a new project has never been simpler!

# Installation

```bash
# clone the project

git clone https://github.com/grumbach/project_init.git && cd project_init

# Setup your own path

sed -e 's:/Users/agrumbac/Documents/github/project_init/:'"`pwd`"':g' project_init.bash > .TMP && mv -f .TMP project_init.bash

# Make executable

chmod +x project_init.bash

# Add alias to your .bash_profile or .zshrc

echo "alias init='"`pwd`"/project_init.bash'" >> ~/.bash_profile
# OR
echo "alias init='"`pwd`"/project_init.bash'" >> ~/.zshrc
```

Remember to use your own ```libft``` and ```file headers```!
