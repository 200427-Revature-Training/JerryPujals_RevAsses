

CREATE TABLE "Teir3".user_role (
	role_id serial NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT user_role_name_key UNIQUE (name),
	CONSTRAINT user_role_pkey PRIMARY KEY (role_id)
);

CREATE TABLE "Teir3".category (
	category_id serial NOT NULL,
	"name" text NOT NULL,
	CONSTRAINT category_name_key UNIQUE (name),
	CONSTRAINT category_pkey PRIMARY KEY (category_id)
);


CREATE TABLE "Teir3".flashcard (
	flashcard_id serial NOT NULL,
	question text NOT NULL,
	answer text NOT NULL,
	category_id int4 NOT NULL,
	CONSTRAINT flashcard_pkey PRIMARY KEY (flashcard_id),
	CONSTRAINT flashcard_question_key UNIQUE (question),
	CONSTRAINT fc_cat_fk FOREIGN KEY (category_id) REFERENCES category(category_id)
);

CREATE TABLE "Teir3".app_user (
	user_id serial NOT NULL,
	username text NOT NULL,
	"password" text NOT NULL,
	first_name text NOT NULL,
	last_name text NOT NULL,
	role_id int4 NOT NULL,
	CONSTRAINT app_user_pkey PRIMARY KEY (user_id),
	CONSTRAINT app_user_username_key UNIQUE (username),
	CONSTRAINT user_role_fk FOREIGN KEY (role_id) REFERENCES user_role(role_id)
);


CREATE TABLE "Teir3".study_set (
	study_set_id serial NOT NULL,
	"name" text NOT NULL,
	owner_id int4 NOT NULL,
	CONSTRAINT study_set_pkey PRIMARY KEY (study_set_id),
	CONSTRAINT owner_set_fk FOREIGN KEY (owner_id) REFERENCES app_user(user_id)
);


CREATE TABLE "Teir3".study_set_card (
	study_set_id int4 NOT NULL,
	flashcard_id int4 NOT NULL,
	CONSTRAINT compose_key PRIMARY KEY (study_set_id, flashcard_id),
	CONSTRAINT card_fk FOREIGN KEY (flashcard_id) REFERENCES flashcard(flashcard_id),
	CONSTRAINT set_fk FOREIGN KEY (study_set_id) REFERENCES study_set(study_set_id)
);

INSERT INTO "Teir3".user_role ("name") VALUES('User');


INSERT INTO "Teir3".app_user
(username, "password", first_name, last_name, role_id)
VALUES('Evilartnboy', 'guymandude', 'Jerry', 'Pujals', 1);

INSERT INTO "Teir3".category
("name")
VALUES('Trivia');

INSERT INTO "Teir3".flashcard
(question, answer, category_id)
VALUES('Who', 'whomsteved', 1);

INSERT INTO "Teir3".study_set
("name", owner_id)
VALUES('Test', 1);

INSERT INTO "Teir3".study_set_card
(study_set_id, flashcard_id)
VALUES(1, 1);





DECLARE @re CURSOR; 

CREATE PROCEDURE belonging (
    @userid INT,
    @re OUTPUT
) AS
    SELECT 
       re = *
    FROM
        study_set ss 
    WHERE
        study_set.owner_id = @userid;

    SELECT @product_count = result ;
GO;

