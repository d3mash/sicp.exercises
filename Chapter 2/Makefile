exercisefolder:
	mkdir 2.$n
	cd 2.$n
	touch '2.$n/exercise.rkt'
	touch '2.$n/test.rkt'
	echo '#lang racket' >> 2.$n/exercise.rkt
	echo '#lang racket' >> 2.$n/test.rkt
	echo '(require test-engine/racket-tests)' >> 2.$n/test.rkt
	echo '(require "exercise.rkt")' >> 2.$n/test.rkt 
test:
	racket '2.$n/test.rkt'
commit:
	git add '2.$n'
	git commit -m 'add 2.$n solution'
	git push
