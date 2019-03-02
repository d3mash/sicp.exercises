exercisefolder:
	mkdir 3.$n
	cd 3.$n
	touch '3.$n/exercise.rkt'
	touch '3.$n/test.rkt'
	echo '#lang racket' >> 3.$n/exercise.rkt
	echo '#lang racket' >> 3.$n/test.rkt
	echo '(require test-engine/racket-tests)' >> 3.$n/test.rkt
	echo '(require "exercise.rkt")' >> 3.$n/test.rkt 
test:
	racket '3.$n/test.rkt'
commit:
	git add '3.$n'
	git commit -m 'add 3.$n solution'
	git push
