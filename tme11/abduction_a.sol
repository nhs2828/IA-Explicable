cnf(t,axiom,[vient(X),-libre(X),-motive(X)]).
cnf(t,axiom,[libre(X),autreRdv(X),travail(X)]).
cnf(t,axiom,[-libre(X),-autreRdv(X)]).
cnf(t,axiom,[-libre(X),-travail(X)]).
cnf(t,axiom,[motive(X),-ennui(X),autreRdv(X)]).
cnf(t,axiom,[motive(X),-vient(Y),-vient(Z),-ami(X,Y),-ami(X,Z),eq(Y,Z)]).
cnf(t,axiom,[-motive(X),-vient(Y),-deteste(X,Y)]).

cnf(f,axiom,[vient(b)]).
cnf(f,axiom,[vient(c)]).
cnf(f,axiom,[libre(a)]).
cnf(f,axiom,[libre(b)]).
cnf(f,axiom,[libre(e)]).

% 

cnf(f,axiom,[ennui(a)]).

cnf(f,axiom,[eq(X,X)]).
cnf(f,axiom,[-eq(a,b)]).
cnf(f,axiom,[-eq(a,c)]).
cnf(f,axiom,[-eq(a,d)]).
cnf(f,axiom,[-eq(a,e)]).
cnf(f,axiom,[-eq(b,a)]).
cnf(f,axiom,[-eq(b,c)]).
cnf(f,axiom,[-eq(b,d)]).
cnf(f,axiom,[-eq(b,e)]).
cnf(f,axiom,[-eq(c,a)]).
cnf(f,axiom,[-eq(c,b)]).
cnf(f,axiom,[-eq(c,d)]).
cnf(f,axiom,[-eq(c,e)]).
cnf(f,axiom,[-eq(d,a)]).
cnf(f,axiom,[-eq(d,b)]).
cnf(f,axiom,[-eq(d,c)]).
cnf(f,axiom,[-eq(d,e)]).
cnf(f,axiom,[-eq(e,a)]).
cnf(f,axiom,[-eq(e,b)]).
cnf(f,axiom,[-eq(e,c)]).
cnf(f,axiom,[-eq(e,d)]).
cnf(f,axiom,[deteste(c,d)]).
% Alban vient
%cnf(negAlb,top_clause,[-vient(a)]).

pf([-ennui(_),-ami(_,_)]<=4).
