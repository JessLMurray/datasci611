#!/usr/bin/env bash

echo "${1} and $2 are command line arguments"

let b=$1+2

echo $b


jessleem@bc15-n08:~$ ls
Dockerfile  drun.sh  test1

jessleem@bc15-n08:~$ touch h5_cut.sh

jessleem@bc15-n08:~$ ls
Dockerfile  drun.sh  h5_cut.sh  test1

jessleem@bc15-n08:~$ chmod +x h5_cut.sh

jessleem@bc15-n08:~$ ls
Dockerfile  drun.sh  h5_cut.sh  test1

jessleem@bc15-n08:~$ vim h5_cut.sh

jessleem@bc15-n08:~$ cat h5_cut.sh
#!/usr/bin/env bash

echo "Hello_world"

jessleem@bc15-n08:~$ ./h5_cut.sh
Hello_world

jessleem@bc15-n08:~$ cut -d "_" -f 1,2  h5_cut.sh --output-delimiter=" "
#!/usr/bin/env bash

echo "Hello world"

jessleem@bc15-n08:~$ ./h5_curl.sh
curl: try 'curl --help' or 'curl --manual' for more information
./h5_curl.sh: line 4: https://people.sc.fsu.edu/~jburkardt/data/csv/deniro.csv:
./h5_curl.sh: line 5: -o: command not found
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ ./h5_curl.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2391  100  2391    0     0   2391      0  0:00:01 --:--:--  0:00:01 14490
jessleem@bc15-n08:~$ ls
cut  Dockerfile  downloaded.csv  drun.sh  FILE  h5_curl.sh  h5_cut.sh  test1
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ vim h5_cut.sh
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ ./h5_curl.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2391  100  2391    0     0   2391      0  0:00:01 --:--:--  0:00:01 12994
jessleem@bc15-n08:~$ vim h5_cut.sh
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ ./h5_curl.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     019
1984,  60, "Falling in Love"
1990,  96, "Goodfellas"
1994,  39, "Mary Shelley's Frankenstein"
2000,  43, "The Adventures of Rocky & Bullwinkle"
2008,  19, "Righteous Kill"
2011,  25, "Killer Elite"
2013,  11, "Killing Season"
100  2391  100  2391    0     0   2391      0  0:00:01 --:--:--  0:00:01 18826
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ ./h5_curl.sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  2391  100  2391    0     0   2391      0  0:00:01 --:--:--  0:00:01 18826
jessleem@bc15-n08:~$ ls
cut  Dockerfile  downloaded.csv  drun.sh  FILE  h5_curl.sh  h5_cut.sh  ll.txt  t
jessleem@bc15-n08:~$ cat ll.txt
1980,  97, "Raging Bull"
1984,  60, "Falling in Love"
1990,  96, "Goodfellas"
1994,  39, "Mary Shelley's Frankenstein"
2000,  43, "The Adventures of Rocky & Bullwinkle"
2008,  19, "Righteous Kill"
2011,  25, "Killer Elite"
2013,  11, "Killing Season"
jessleem@bc15-n08:~$ vim h5_curl.sh
jessleem@bc15-n08:~$ awk "{print $1}" ll.txt
1980,  97, "Raging Bull"
1984,  60, "Falling in Love"
1990,  96, "Goodfellas"
1994,  39, "Mary Shelley's Frankenstein"
2000,  43, "The Adventures of Rocky & Bullwinkle"
2008,  19, "Righteous Kill"
2011,  25, "Killer Elite"
2013,  11, "Killing Season"
jessleem@bc15-n08:~$ awk "/year/ {print}" ll.txt
jessleem@bc15-n08:~$ awk "{print $1,$3}" ll.txt
awk: cmd. line:1: {print ,}
awk: cmd. line:1:        ^ syntax error
awk: cmd. line:1: {print ,}
awk: cmd. line:1:         ^ syntax error
awk: cmd. line:1: {print ,}
awk: cmd. line:1:          ^ unexpected newline or end of string
jessleem@bc15-n08:~$ awk -F"," "{print $1} ll.txt

awk '{print $1}' ll.txt