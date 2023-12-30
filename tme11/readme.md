# TME 11: Abduction

- LE LORIER Yann
- NGUYEN Hoang-Son

## 1. Qui vient à la soirée?

### Représentation

Le fichier `pbSoiree2.sol` a la théorie clausale pour cette représentation.

### Déduction

(b) Champ de production: `pf([vient(_),-vient(_)]<=1).`

```sh
java -jar solar2-build311.jar pbSoiree2.sol -dfid 10
```

Output:

```
SOLAR (SOL for Advanced Reasoning) 2.0 alpha (build 311)
4 FOUND CONSEQUENCES
[+vient(c)]
[+vient(b)]
[+vient(a)]
[+vient(d)]
```

Avec `-proof`:

```
SOLAR (SOL for Advanced Reasoning) 2.0 alpha (build 311)
4 FOUND CONSEQUENCES
[+vient(c)]

PROOF:
(0/10 nodes)
root @1
 + +ennui(c) 1st (ext) @2
   + -ennui(c) (ext target)
   + +motive(c) 1st (ext) @3
   | + -motive(c) (ext target)
   | + +vient(c) 1st (skip) @4
   | + -libre(c) 1st (unit axiom) @5
   + +autreRdv(c) 1st (ext) @6
     + -autreRdv(c) (ext target)
     + -libre(c) 1st (unit axiom) <subgoal> @7

[+vient(b)]

PROOF:
(0/5 nodes)
root @1
 + +libre(b) 1st (ext) @2
   + -libre(b) (ext target)
   + +vient(b) 1st (skip) @3
   + -motive(b) 1st (unit axiom) <subgoal> @4

[+vient(a)]

PROOF:
(0/26 nodes)
root @1
 + -eq(c,b) 1st (ext) @2
   + +eq(c,b) (ext target)
   + +motive(a) 1st (ext) @3
   | + -motive(a) (ext target)
   | + +vient(a) 1st (skip) @4
   | + -libre(a) 1st (ext) @5
   |   + +libre(a) (ext target)
   |   + +autreRdv(a) 1st (ext) @6
   |   | + -autreRdv(a) (ext target)
   |   + +travail(a) 1st (unit axiom) @7
   + -vient(c) 1st (ext) @9
   | + +vient(c) (ext target)
   | + -motive(c) 1st (ext) @10
   | | + +motive(c) (ext target)
   | | + -ennui(c) 1st (unit axiom) @11
   | | + +autreRdv(c) 1st (ext) @12
   | |   + -autreRdv(c) (ext target)
   | |   + -libre(c) 1st (unit axiom) @13
   | + -libre(c) 1st (unit axiom) @14
   + -vient(b) 1st (ext) @16
   | + +vient(b) (ext target)
   | + -motive(b) 1st (unit axiom) @17
   | + -libre(b) 1st (unit axiom) @18
   + -ami(a,c) 1st (unit axiom) @19
   + -ami(a,b) 1st (unit axiom) <subgoal> @20

[+vient(d)]
```

Carc:

```
java -jar solar2-build311.jar deduction_3.sol -dfid 10 -carc
```

```
SOLAR (SOL for Advanced Reasoning) 2.0 alpha (build 311)
4 CHARACTERISTIC CLAUSES
[+vient(c)]
[+vient(b)]
[+vient(a)]
[+vient(d)]
```

(c)
Dans le fichier `deduction_c.sol`, nous trouvons la règle `deteste(c,d)`.

Nous pouvons conclure que cette nouvelle règle crée une contradiction.

whyyyw tho

## 2. Abduction

Dans le fichier `abduction_a.sol` nous trouvons les nouveaux faits $F_3$.

(a)

(b) 

(c) $H_1$ et $H_2$ sont des hypothèses abductives

(d) Toutes ces conséquences sont des nouvelles conséquences.

