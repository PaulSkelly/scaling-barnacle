## compile the lib file and make the .so
cc -c libex29.c -o libex29.o
cc -shared -o libex29.so libex29.o

##make the loader program
cc -Wall -g -DNDEBUG ex29.c -ldl -o ex29

#try it out with some things that work
./ex29 ./libex29.so print_a_message "hello there"

./ex29 ./libex29.so uppercase "hello there"

./ex29 ./libex29.so lowercase "hello there"

./ex29 ./libex29.so fail_on_purpose "i fail"