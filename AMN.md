## Machine readable AMN

### Logic notation


logic | ASCII | meaning
--- | --- | ---
P ∨ Q | P or Q | or
P ∧ Q | P & Q | and
¬P | not(P) | negation
P → Q | P => Q | implication
P ↔ Q | P <=> Q | if and only if
∀x. (x ∈ T → P )| !x . (x : T => P) | for all
∃x. P | #x . P| there exists 
E = F | E = F | equality on expressions
E ≠ F | E /= F | inequality on expressions

___

### Set notation


sets | ASCII | meaning
--- | --- | ---
S ⋃ T | S \/ T | union
S ∩ T | S /\ T | intersection
e ∈ S | e : S | member of
e ∉ S | e /: S | not member of
S ⊆ T | S <: T | subset
S ⊂ T | <<: | strict subset
S ⊈ T | /<: | not a subset 
S ⊄ T | /<<: | not a strict subset
S - T | S - T | set substraction
ℙ S | POW S | power set
S × T | S * T | cartesian product
card(S) | card(S) | size
{x l x ∈ S ∧ P} | { x l x : S & P }| set comprehension
{} | { } | empty set
{E1, ..., En} | { E1, ..., En } | set enumeration
⋃S | Union S | general union
∩S | Inter S | general intersection
⋃zlp E | Union z . (P l E) | general union
∩zlp E | Inter z . (P l E) | general intersection


___

### AMN


AMN | ASCII | meaning
--- | --- | ---
x := E | x := E | assignment
x :∈ E | x :: E | nondeterministic assignment
a(i) := E | a(i) := E | array assignment
S ll T | S ll T | parallel
S;T | S;T | sequencing
v ← op(w)| v <-- op(w) | operation declaration


___

### Arithmetic notation


arithmetic | ASCII | meaning
--- | --- | ---
ℕ | NAT | natural numbers
Ꞑ | NAT1 | positive numbers
m..n | m..n | numbers from m to n
m > n | m > n | greater than
m ≥ n | m >= n | greater than or equal to
m < n | m < n | less than
m ≤ n | m <= n | less than or equal to
max(S) | max(S) | maximum
min(S) | min(S) | minimum
m div n | m / n | integer division of m by n
m mod n | m mod n | m modulo n
𝚺z. ( P l E ) | SIGMA z . ( P l E ) | general sum
𝚷z. ( P l E ) | PI z . ( P l E ) | general product
___

### Relation notation


relations | ASCII | meaning
--- | --- | ---
x ↦ y | x l-> y | x maps to y
dom(R) | dom(R) | doamin of R
ran(R) | ran(R) | range of R
U ◁ R | U <l R | domain restriction
U ⩤ R | U <<l R | domain anti-restriction
U ▷ R| U l> R | range restriction
U ⩥ R | U l>> R | range anti-restriction
R[U] | R[U] | relational image
R⁻¹ | R~ | relational inverse
R0 ; R1 | R0 ; R1 | relational composition
R0 ⋖ R1 | R0 <+ R1 | relational override
id(S) | id(S) | identity relation on S 
Rⁿ | iterate(R,n) | nth iterate of relation R
R* | closure(R) | transitive closure of relation R
___

### Function notation


function | ASCII | meaning
--- | --- | ---
S ⇸ T | S +-> T | partial function
S → T | S --> T | total function
S ⤗ T | S >+> T | partial injection
S ↣ T | S >-> T | total injection
S ⤀ T | S +->> T | partial surjection
S ↠ T | S -->> T | total surjection
S ⤖ T | S >->> T | (total) bijection
λz. (P l E) | %z . (P l E) | lambda abstraction
___

### Sequence notation


relations | ASCII | meaning
--- | --- | ---
[] | <> | the empty sequence
[e1,...,en] | [e1,...,en] | enumerated sequence
seq(S) | seq(S) | finite sequences of S
seq₁(S) | seq1(S) | finite non-empty sequences of S
iseq(S) | iseq(S) | finite injective sequences
perm(S) | perm(S) | finite bijective sequences
s1 ⁀ s2 | s1 ^ s2 | concatenation
e → s | e -> s | prefix
s ← e | s <- e | append
size(s) | size(s) | the length of the sequence S
rev(s) | rev(s) | reverse
s ↑ n | s /l\ n | sequence truncation
s ↓ n | s \l/ n | removal of first n elements removed
first(s) | first(s) | first element
last(s) | last(s) | last element
tail(s) | tail(s) | first element removed
front(s) | front(s) | last element removed
