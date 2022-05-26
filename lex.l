%{ 
	#include "y.tab.h"

	#include <stdio.h>
	#include <stdlib.h>
%}

%%

"print" return (PRINT);
"for" return FOR;
"in" return IN;
"range" return (RANGE);

[0-9]+ return NUMBER;
[_a-zA-Z][_a-zA-Z0-9]* return ID ;

[ \t] ;
\(   return (LBRACKET);
\)   return (RBRACKET);
\:  return (COLON);
\,      return COMMA;
%%


n = 23
fact = 1
  
for i in range(1,n+1):
    fact = fact * i
      
print ("The factorial of 23 is : ",end="")
print (fact)