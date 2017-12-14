#!/usr/local/bin/bash
# bash 4 installed via homebrew on mac
# open the docs webpage corresponding to the desired arg

declare -A arr
arr=(
	[linux]="http://www.tldp.org/guides.html"
	[unix]="https://en.wikipedia.org/wiki/List_of_Unix_commands"
	[ubuntu]="https://help.ubuntu.com/"
	[bash]="http://tldp.org/LDP/Bash-Beginners-Guide/html/index.html"
	[brew]="https://docs.brew.sh/"
	[git]="https://git-scm.com/docs"
	[gitflow]="https://datasift.github.io/gitflow/IntroducingGitFlow.html"
	[curl]="https://curl.haxx.se/docs/httpscripting.html"
	[wget]="https://www.gnu.org/software/wget/manual/"
	[emacs]="https://www.gnu.org/software/emacs/manual/emacs.html"
	[vim]="https://vim.sourceforge.io/docs.php"
	[nano]="https://www.nano-editor.org/docs.php"
	[python]="https://docs.python.org/3/"
	[pandas]="https://pandas.pydata.org/pandas-docs/stable/"
	[matplotlib]="https://matplotlib.org/gallery/index.html"
	[ruby]="https://www.ruby-lang.org/en/documentation/"
	[ruby-on-rails]="http://guides.rubyonrails.org/"
	[javascript]="https://developer.mozilla.org/en-US/docs/Web/JavaScript"
	[html]="https://developer.mozilla.org/en-US/docs/Web/HTML"
	[css]="https://developer.mozilla.org/en-US/docs/Web/CSS"
	[dom]="https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model"
	[aws]="https://aws.amazon.com/documentation/"
	[github]="https://guides.github.com/"
	[docker]="https://docs.docker.com/"
	[docker-compose]="https://docs.docker.com/compose/"
	[yarn]="https://yarnpkg.com/lang/en/docs/"
	[webpack]="https://webpack.github.io/docs/"
	[npm]="https://docs.npmjs.com/"
	[node]="https://nodejs.org/en/docs/"
	[express]="https://expressjs.com/en/starter/installing.html"
	[es6]="http://exploringjs.com/es6/index.html"
	[babel]="https://babeljs.io/docs/setup/"
	[vue]="https://vuejs.org/v2/guide/"
	[react]="https://reactjs.org/docs/hello-world.html"
	[jsx]="https://jsx.github.io/doc/tutorial.html"
	[rest-api]="https://code.tutsplus.com/tutorials/a-beginners-guide-to-http-and-rest--net-16340"
	[http-status]="https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml"
	[http-request]="https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods"
	[apache-http-server]="https://httpd.apache.org/docs/"
	[mongodb]="https://docs.mongodb.com/"
)

if [[ "$1" ]]; then
	if [[ -n "${arr[$1]}" ]]; then
		echo "Opening $1"
		open ${arr[$1]}
	elif [[ "$1" = "help" ]]; then
		echo "Welcome to docs. Try it by using the name of a reference documentation you would like to see after the word \"docs\""
		echo "For example, try: docs aws"
		echo "The available docs pages are: ${!arr[@]}"
	else
		echo "Looks like we don't have that one, try these instead:"
		echo "${!arr[@]}"
	fi
else
	echo "Sorry, please try another entry"
	echo "The available docs pages are: ${!arr[@]}"
fi
