# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    project_init.bash                                  :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agrumbac <agrumbac@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/04 17:49:26 by agrumbac          #+#    #+#              #
#    Updated: 2018/11/04 19:24:46 by agrumbac         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ------------------------ First Time Setup ------------------------
# (1) Please change the file headers in:
#    * Makefile
#    * srcs/main.c
#    * includes/header.h
#
# (2) Please use your OWN libft (change the Makefile libft/% rule)
#
# (3) Please set your template project path:

template_path="/Users/agrumbac/Documents/github/project_init/"

# ------------------------ All done. Enjoy! ------------------------

# Show off first

W="\e[0m""\e[34;1m"
WR="\e[0m""\e[31;5m"
X="\e[0m"
G="\e[32m"
B="\e[34m"
Y="\e[33m"

printf $G"Starting a new project has never been simpler!\n"$X
printf $W"              , \n"
printf "     _,-'\\   /|   .    .    /\`. \n"
printf " _,-'     \\_/_|_  |\   |\`. /   \`._,--===--.__ \n"
printf "^       _/\"/  \" \ : \__|_ /.  ,'   :.  :. .  \`-._ \n"
printf "      "$WR"//"$W"  ^ "$WR"/7"$W"  t'\"\"    \"\`-._/ ,'\   :   :  :  . \`. \n"
printf "      "$WR"Y"$W"     "$WR"L/"$W"  )\         ]],'   \  :   :  :   :  \`. \n"
printf "      |        /  \`.n_n_n,','\_    \ ;   ;  ;   ;   _> \n"
printf "      |__    ,'     |  \\\`-'    \`-.__\_______.==---' \n"
printf "      //  \`\"\"\\      |   \\            \\ \n"
printf "     \|     |/      /    \            \\ \n"
printf "	           /     |             \`. \n"
printf "	          /      |               ^ \n"
printf "	         ^       | \n"
printf "                         ^ \n"$X

# Starting a new project has never been simpler!

printf $G"Project name: \e[0m"
read name
upper_case_name=`echo $name | awk '{print toupper($0)}'`

# Project structure
printf $B"["$G"OK"$B"] Generating "$Y"srcs"$B" and "$Y"includes"$B" folders\n"$X
cp -R $template_path/srcs .
cp -R $template_path/includes .
sed -e 's/__PROJECT_NAME__/'"$name"'/g' srcs/main.c > .TMP \
	&& mv -f .TMP srcs/main.c
sed -e 's/__PROJECT_NAME__/'"$upper_case_name"'/g' includes/header.h > .TMP \
	&& mv -f .TMP includes/header.h
mv srcs/main.c srcs/$name.c
mv includes/header.h includes/$name.h

# Makefile
printf $B"["$G"OK"$B"] Generating "$Y"Makefile"$B"\n"$X
cp $template_path/Makefile .
sed -e 's/__PROJECT_NAME__/'"$name"'/g' Makefile > .TMP && mv -f .TMP Makefile

# .gitignore
printf $B"["$G"OK"$B"] Generating "$Y".gitignore"$B"\n"$X
cp $template_path/.gitignore .
sed -e 's/__PROJECT_NAME__/'"$name"'/g' .gitignore > .TMP && mv -f .TMP .gitignore

# Complete
printf $G"Project initialisation complete!\n"$X
