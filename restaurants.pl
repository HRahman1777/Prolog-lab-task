/* resturant type as distance
   items of those resturants
*/

prefers(rahim, Type):-
    nearest_resturant(Type).

prefers(karim, Type):-
    elsewhere_resturant(Type).

likes(rahim, Items):-
    indian_item(Items); bangladeshi_item(Items).

likes(karim, Items):-
    chinese_item(Items),italian_item(Items).


provides(bangladeshi, bangladeshi_item).
provides(bangladeshi, indian_item).


nearest_resturant(bangladeshi).
nearest_resturant(indian).

elsewhere_resturant(chinese).
elsewhere_resturant(italian).


indian_item(curry).
indian_item(dahl).
indian_item(tandoori).
indian_item(kurma).

bangladeshi_item(bhuna_khichuri).
bangladeshi_item(patla_khichuri).
bangladeshi_item(vorta).
bangladeshi_item(ilish_polau).
bangladeshi_item(panta_ilish).

chinese_item(chow_mein).
chinese_item(chop_suey).
chinese_item(sweet_and_sour).

italian_item(pizza).
italian_item(spaghetti).
italian_item(sweet_and_sour).






