%{
#include<stdio.h>
#include<string.h>
FILE *yyin;
FILE *yyout;
%}
a (aaa+)|(AAA+)
b (bbb+)|(BBB+)
c (ccc+)|(CCC+) 
d (ddd+)|(DDD+) 
e (eee+)|(EEE+) 
f (fff+)|(FFF+)
j (jjj+)|(JJJ+)
h (hhh+)|(HHH+)
i (iii+)|(III+)
g (ggg+)|(GGG+)
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
%%

{a} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{b} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{c} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{d} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{e} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{f} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{j} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{h} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{i} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{g} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{k} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{l} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{m} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{n} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{o} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{p} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{q} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{r} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{s} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{t} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{u} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{v} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{w} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{x} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{y} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
{z} {fprintf(yyout,"%c%d",yytext[0],strlen(yytext));}
.   {fprintf(yyout,"%s",yytext);}
%%
int yywrap() {return 1;}
int main(int argc, char *argv[])
{
    yyout = fopen(argv[2], "w");
	yyin = fopen(argv[1], "r");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}