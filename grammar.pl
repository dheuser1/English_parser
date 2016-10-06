% starting point for program 5

%utterance([someone, walked, slowly, to, the, supermarket]).

utterance(X) :- sentence(X,[]).

sentence(Start, End) :- nounphrase(Start, Rest), verbphrase(Rest, End).

%noun needs to have article ahead of it
nounphrase([Article| Rest], End) :- article(Article), complexnoun(Rest, End).

%make as many adjectives ahead of a noun as needed
complexnoun([Adjective | Rest], End) :- adjective(Adjective), complexnoun(Rest, End).

%make a noun
complexnoun([Noun | End], End) :- noun(Noun). 

% can have prepositional phrase after noun
complexnoun([Noun, Prep | Rest], End) :- noun(Noun), prep(Prep), nounphrase(Rest, End).  


% form of to be
verbphrase([Copula, Adjective | Rest], End) :- copula(Copula), adjective(Adjective).

% form of to be with adverb
verbphrase([Copula, Adverb, Adjective | Rest], End) :- copula(Copula), adverb(Adverb), adjective(Adjective).

% make verb
verbphrase([Verb | End], End) :- verb(Verb).

%nounphrase after verb
verbphrase([Verb | Rest], End) :- verb(Verb), nounphrase(Rest, End).

% can have prepositional phrase after verb

verbphrase([Verb, Prep | Rest], End) :- verb(Verb), prep(Prep), nounphrase(Rest, End).

% adverb and then verb
verbphrase([Adverb, Verb | End], End) :- adverb(Adverb), verb(Verb).

%nounphrase after adverb and verb
verbphrase([Adverb, Verb | Rest], End) :- adverb(Adverb), verb(Verb), nounphrase(Rest, End).

% can have prepositional phrase after adverb and verb
verbphrase([Adverb, Verb, Prep | Rest], End) :- adverb(Adverb), verb(Verb), prep(Prep), nounphrase(Rest, End).




aticle(a).
article(an).
article(the).

adjective(big).
adjective(small).
adjective(bright).
adjective(dark).
adjective(soft).
adjective(furry).
adjective(fluffy).
adjective(easy).
adjective(hard).
adjective(red).
adjective(blue).
adjective(green).
adjective(pink).
adjective(yellow).

noun(man).
noun(dog).
noun(woman).
noun(cat).
noun(store).
noun(supermarket).
noun(ham).

verb(likes).
verb(like).
verb(bites).
verb(bit).
verb(walk).
verb(walked).
verb(kick).
verb(kicked).
verb(pet).

adverb(slowly).
adverb(quickly).
adverb(gracefully).
adverb(happily).
adverb(carefully).
adverb(stylishly).
adverb(urgently).
adverb(recklessly).
adverb(very).

prep(to).
prep(at).
prep(on).
prep(with).
prep(in).
prep(by).
prep(past).
prep(onto).

copula(is).
copula(was).





	  
