

exclude(){
	git_dir=$(git rev-parse --show-toplevel 2>/dev/null)
	if [[ $git_dir ]]; then
		echo "Inserting $1 into git exclude"
		echo $1 >> "$git_dir/.git/info/exclude"
	else
		echo "Not in git dir"
	fi
}

