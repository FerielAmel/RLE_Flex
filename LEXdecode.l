%option noyywrap
%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
int cpt=0;
int i=0;
FILE *yyin;
FILE *yyout;
%}
chiffre ([0-9])+

a (aaa+)|(AAA+)
b (bbb+)|(BBB+)
c (ccc+)|(CCC+) 
d (ddd+)|(DDD+) 
e (eee+)|(EEE+) 
f (fff+)|(FFF+)
g (ggg+)|(GGG+)
h (hhh+)|(HHH+)
i (iii+)|(III+)
j (jjj+)|(JJJ+)
k (kkk+)|(KKK+)
l (lll+)|(LLL+)
m (mmm+)|(MMM+)
n (nnn+)|(NNN+)
o (ooo+)|(OOO+)
p (ppp+)|(PPP+)
q (qqq+)|(QQQ+)
r (rrr+)|(RRR+)
s (sss+)|(SSS+)
t (ttt+)|(TTT+)
u (uuu+)|(UUU+)
v (vvv+)|(VVV+)
w (www+)|(WWW+)
x (xxx+)|(XXX+)
y (yyy+)|(YYY+)
z (zzz+)|(ZZZ+)

ligne ([a-z]|[A-Z]){chiffre}
%%
{ligne}						{cpt = atoi(yytext+1);
								for (i=0;i<cpt;i++) {fprintf (yyout,"%c",yytext[0]);}
                                cpt = 0;
}
.						{fprintf(yyout,"%s",yytext);}

%%

int main(int argc, char *argv[])
{
	yyin = fopen(argv[1], "r");
	yyout = fopen(argv[2], "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}