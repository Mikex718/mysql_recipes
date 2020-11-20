create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 
create table Measure (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL, measure_id INT, amount INT, 
	CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
	CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	CONSTRAINT fk_measure FOREIGN KEY(measure_id) REFERENCES Measure(id)) 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 


INSERT INTO Measure (name) VALUES('CUP'), ('TEASPOON'), ('TABLESPOON'), ('WHOLE');

INSERT INTO Ingredient (name) VALUES('egg'), ('salt'), ('sugar'), ('chocolate'), ('vanilla extract'), ('flour'),('taco'),('Buffalo Wings'),('buffalo chicken wrap'),('Stir fry'),('MacnCheese');

INSERT INTO Recipe (name, description, instructions) VALUES('Boiled Egg', 'A single boiled egg', 'Add egg to cold water. Bring water to boil. Cook.');

INSERT INTO Recipe (name, description, instructions) VALUES('Chocolate Cake', 'Yummy cake', 'Add eggs, flour, chocolate to pan. Bake at 350 for 1 hour');

INSERT INTO Recipe (name, description, instructions) VALUES('Tacos','tasty taco','Add ground beef,salsa, cheese, and lettuce')

INSERT INTO Recipe (name, description, instructions) VALUES('Buffalo Wings','Hot wings','cook chicken and out it in hot hot sauce')

INSERT INTO Recipe (name, description, instructions) VALUES('buffalo chicken wrap','Hot chicken tender wrap','buffalo chicken tenders with lettuce, tomato, cheese, and ranch wrapped in a tortilla')

INSERT INTO Recipe (name, description, instructions) VALUES('Stir fry','tasty cooked veggies','cook the veggies')

INSERT INTO Recipe (name, description, instructions) VALUES('MacnCheese','Macaroni and Cheese','Macaroni mixed with cheese')
/*MacnCheese*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES(7, 11, null, 1)
/*Stir fry*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES(6, 10, null 1)
/*buffalo chicken wrap*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES(5, 9, null, 1)
/*buffalo wings*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES(4, 8, 4, 12)
/*Tacos*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES(3, 7, 4, 3)

/*boiled egg ingredients*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (1, 1, NULL, 1);

/*chocolate cake ingredients*/
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, NULL, 3);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 2, 2, 1);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 1, 2);

INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 4, 1, 1);