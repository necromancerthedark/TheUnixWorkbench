all: README.md

README.md: guessinggame.sh
		echo "# Guessing Game for Coursera Project" > README.md
		echo $$(date) >> README.md
		echo "Number of Lines: " >> README.md
		wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
		rm README.md