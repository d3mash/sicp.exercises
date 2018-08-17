exercisefolder:
	mkdir $n
	cd $n
	touch '$n/exercise.rkt'
	touch '$n/test.rkt'
	echo '#lang racket' >> $n/exercise.rkt
	echo '#lang racket' >> $n/test.rkt
	echo '(require test-engine/racket-tests)' >> $n/test.rkt
	echo '(require "exercise.rkt")' >> $n/test.rkt 
test:
	racket '2.$n/test.rkt'
commit:
	git add '2.$n'
	git commit -m 'add 2.$n solution'
	git push
