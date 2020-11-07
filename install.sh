bold="\033[1m"
italic="\033[3m"
underlined="\033[4m"
normal="\033[0m"

chmod +x goinfre.sh > /dev/null
if [[ -f ~/.zshrc ]]; then
	echo "alias goinfre=$(PWD)/goinfre.sh" >> ~/.zshrc
else
	touch ~/.zsh; echo "alias goinfre=$(PWD)/goinfre.sh" >> ~/.zshrc
fi
echo "goinfre installed"
echo "Usage:"
echo "\t${bold}goinfre ${italic}filename${normal}"
echo "It will move ${italic}filename${normal} from ${underlined}current${normal} directory to ~/goinfre and create symlink on it in ${underlined}current${normal} directory"
echo "For start restart your terminal!"
