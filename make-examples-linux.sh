rm -rf *.o *.dylib
gcc -std=c89 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c getdns_core_only.c
gcc -std=c89 -shared -fPIC -levent_core -o libgetdns.so getdns_core_only.o
gcc -std=c89 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-all-functions.c
gcc -std=c89 -fPIC -L./ example-all-functions.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-all-functions 
gcc -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-simple-answers.c
gcc -std=c99 -fPIC -L./ example-simple-answers.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-simple-answers 
gcc -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-tree.c
gcc -std=c99 -fPIC -L./ example-tree.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-tree 
gcc -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-synchronous.c
gcc -std=c99 -fPIC -L./ example-synchronous.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-synchronous 
gcc -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-reverse.c
gcc -std=c99 -fPIC -L./ example-reverse.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-reverse 
rm -rf *.o *.dylib
clang -std=c89 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c getdns_core_only.c
clang -std=c89 -shared -fPIC -levent_core -o libgetdns.so getdns_core_only.o
clang -std=c89 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-all-functions.c
clang -std=c89 -fPIC -L./ example-all-functions.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-all-functions 
clang -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-simple-answers.c
clang -std=c99 -fPIC -L./ example-simple-answers.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-simple-answers 
clang -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-tree.c
clang -std=c99 -fPIC -L./ example-tree.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-tree 
clang -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-synchronous.c
clang -std=c99 -fPIC -L./ example-synchronous.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-synchronous 
clang -std=c99 -c -fPIC -pedantic -g -I./ -Werror -Wall -Wextra -c example-reverse.c
clang -std=c99 -fPIC -L./ example-reverse.o -levent_core -lgetdns -lgetdns_ext_event -lssl -lcrypto -o example-reverse 
