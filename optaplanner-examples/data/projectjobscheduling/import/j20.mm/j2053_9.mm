************************************************************************
file with basedata            : md373_.bas
initial value random generator: 1237005730
************************************************************************
projects                      :  1
jobs (incl. supersource/sink ):  22
horizon                       :  143
RESOURCES
  - renewable                 :  2   R
  - nonrenewable              :  2   N
  - doubly constrained        :  0   D
************************************************************************
PROJECT INFORMATION:
pronr.  #jobs rel.date duedate tardcost  MPM-Time
    1     20      0       25        3       25
************************************************************************
PRECEDENCE RELATIONS:
jobnr.    #modes  #successors   successors
   1        1          3           2   3   4
   2        3          3           5   9  18
   3        3          2           8  10
   4        3          3           7   8  14
   5        3          3           6  12  17
   6        3          2           7  13
   7        3          3          10  11  19
   8        3          2          11  18
   9        3          3          10  12  17
  10        3          1          21
  11        3          2          16  20
  12        3          2          14  20
  13        3          1          14
  14        3          1          15
  15        3          2          16  19
  16        3          1          21
  17        3          2          20  21
  18        3          1          19
  19        3          1          22
  20        3          1          22
  21        3          1          22
  22        1          0        
************************************************************************
REQUESTS/DURATIONS:
jobnr. mode duration  R 1  R 2  N 1  N 2
------------------------------------------------------------------------
  1      1     0       0    0    0    0
  2      1     1       7    8    5   10
         2     4       4    7    4    8
         3     7       4    7    4    7
  3      1     6       7    5    7    1
         2     6       6    6    9    1
         3     9       5    5    5    1
  4      1     4       8    9    7   10
         2     5       6    8    6    5
         3     8       3    7    3    4
  5      1     4       6    9    2    8
         2     6       6    8    2    7
         3     9       5    6    1    5
  6      1     1       9    7   10    7
         2     2       8    6   10    6
         3     4       5    3   10    5
  7      1     2      10    4    9    8
         2     2      10    5    9    7
         3     4       8    2    9    4
  8      1     1       6    4    9    5
         2     5       6    3    9    4
         3     5       6    4    7    4
  9      1     4       9    3    4    6
         2     5       9    3    2    5
         3     6       9    2    2    5
 10      1     1       6    6    4    3
         2     1       5    6    7    9
         3     1      10    5    8    2
 11      1     2       3    8    7   10
         2     7       3    6    2    5
         3     7       3    7    2    4
 12      1     5       7    9    6    8
         2     5       7    8    7    8
         3     6       7    5    5    7
 13      1     7       4    9    3   10
         2     8       2    6    2    7
         3    10       1    6    2    6
 14      1     1       3    9    6    9
         2     1       3    8    6   10
         3     6       1    3    5    9
 15      1     3       9    9    9    7
         2     8       7    5    7    5
         3     9       4    3    6    3
 16      1     1       5    6    8    7
         2     3       4    5    8    5
         3     9       2    2    7    4
 17      1     7       4    5    8   10
         2     9       4    5    6   10
         3     9       4    4    7   10
 18      1     3       9   10    1    8
         2     7       7    9    1    7
         3    10       3    9    1    7
 19      1     8      10    7    5   10
         2     8      10    6    6   10
         3     9      10    6    5    9
 20      1     7       5    4    7    4
         2     9       3    4    6    4
         3    10       1    3    6    4
 21      1     1       8    8    3    7
         2     3       6    5    2    6
         3     5       6    4    2    4
 22      1     0       0    0    0    0
************************************************************************
RESOURCEAVAILABILITIES:
  R 1  R 2  N 1  N 2
   17   19  119  142
************************************************************************