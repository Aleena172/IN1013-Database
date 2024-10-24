mysql> USE pet_database;
Database changed
mysql> INSERT INTO petPet VALUES
    -> ("Fluffy", "Harold", "cat", "Female", "1993-02-04", NULL),
    -> ("Claws", "Gwen", "cat", "Male", "1994-03-17", NULL),
    -> ("Buffy", "Harold", "dog", "Female", "1989-05-13", NULL),
    -> ("Fang", "Benny", "dog", "Male", "1990-08-27", NULL),
    -> ("Bowser", "Diane", "dog", "Male", "1979-08-31", "1995-07-29"),
    -> ("Chirpy", "Gwen", "bird", "Female", "1998-09-11", NULL),
    -> ("Whistler", "Gwen", "bird", "Other", "1997-12-09", NULL),
    -> ("Slim", "Benny", "snake", "Male", "1996-04-29", NULL),
    -> ('Puffball','Diane','hamster','Female','1999-03-30',NULL);
    
    mysql> INSERT INTO petEvent VALUES
    -> ("Fluffy", "1995-05-15", "litter", "4 kittens, 3 female, 1 male"),
    ->     ("Buffy", "1993-06-23", "litter", "5 puppies, 2 female, 3 male"),
    ->     ("Buffy", "1994-06-19", "litter", "3 puppies, 3 female"),
    ->     ("Chirpy", "1999-03-21", "vet", "needed beak straightened"),
    ->     ("Slim", "1997-08-03", "vet", "broken rib"),
    ->     ("Slim", "1997-10-04", "vet", "broken tooth"),
    ->     ("Bowser", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1991-10-12", "kennel", NULL),
    ->     ("Fang", "1998-08-28", "birthday", "Gave him a new chew toy"),
    ->     ("Claws", "1998-03-17", "birthday", "Gave him a new flea collar"),
    ->     ("Whistler", "1998-12-09", "birthday", "First birthday");