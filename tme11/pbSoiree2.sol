cnf(t,axiom,[vient(X),-libre(X),-motive(X)]).
cnf(t,axiom,[libre(X),autreRdv(X),travail(X)]).
cnf(t,axiom,[-libre(X),-autreRdv(X)]).
cnf(t,axiom,[-libre(X),-travail(X)]).
cnf(t,axiom,[motive(X),-ennui(X),autreRdv(X)]).
cnf(t,axiom,[motive(X),-vient(Y),-vient(Z),-ami(X,Y),-ami(X,Z),eq(Y,Z)]).
cnf(t,axiom,[-motive(X),-vient(Y),-deteste(X,Y)]).
cnf(f,axiom,[ami(a,c)]).
cnf(f,axiom,[ami(c,a)]).
cnf(f,axiom,[ami(a,b)]).
cnf(f,axiom,[ami(c,b)]).
cnf(f,axiom,[ami(d,b)]).
cnf(f,axiom,[ami(d,a)]).
cnf(f,axiom,[ami(e,a)]).
cnf(f,axiom,[ami(e,c)]).
cnf(f,axiom,[motive(b)]).
cnf(f,axiom,[libre(b)]).
cnf(f,axiom,[libre(c)]).
cnf(f,axiom,[libre(d)]).
cnf(f,axiom,[-travail(a)]).
cnf(f,axiom,[-autreRdv(a)]).
cnf(f,axiom,[travail(e)]).
cnf(f,axiom,[ennui(c)]).
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
%cnf(f,axiom,[deteste(c,d)]).

pf([vient(_),-vient(_)]<=1).
