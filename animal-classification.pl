%Facts: Robbie is a leopard
animal(robbie).
animal(suzie).
animal(leopard).

itHas(robbie, darkSpots).
itHas(leopard, darkSpots).
itHas(leopard, sharpTeeth).
itHas(leopard, hair).
itHas(leopard, claws).
itHas(leopard, frontEyes).
itHas(suzie, feathers).

itEats(robbie, meat).
itEats(leopard, meat).

itDoes(suzie, flys).

color(leopard, tawny).
color(_, white).
color(_, blackWhite).


itGives(leopard,milk).

birth(suzie, eggs).


isMammal(X):- animal(X); itHas(X, hair); itGives(X, milk).

isBird(X):- animal(X), itHas(X,feathers); itDoes(X, flys), birth(X, eggs).

isCarnivore(X):- animal(X), itEats(X, meat); itHas(X, sharpTeeth), itHas(X, claws ), itHas(X, frontEyes).

isUngulate(X):- animal(X), itHas(X, hoof); itDoes(X, ruminates).

isLeopard(X):- isMammal(X), isCarnivore(X), itHas(X, darkSpots).

isTiger(X):- isMammal(X), isCarnivore(X), color(X, tawny), itHas(X, blackStripes).

isJirafa(X):- isUngulate(X), itHas(X, darkSpots), itHas(X, longLegs), itHas(_, longNeck).

isZebra(X):- isUngulate(X), itHas(X, blackStripes).

isOstrich(X):- isBird(X), not(itDoes(X, flys)), itHas(X, longNeck), itHas(X, longLegs), color(X, white).

isPenguin(X):- isBird(X), not(itDoes(X, flys)), itDoes(X, swim), color(X, blackWhite).

isAlbatroz(X):- isBird(X), itDoes(X, flys).



















