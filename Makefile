test:
	./test_linux.sh

clean:
	rm -f 9cc *.o *~ tmp* a.out test/*~

.PHONY: test clean
