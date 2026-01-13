INSERT INTO table_persons(name, surname, patronymic, sex)
VALUES ('Emily', 'Johnson', 'Marie', 'f'),
       ('Michael', 'Anderson', '', 'm'),
       ('Olivia', 'Thompson', 'Grace', 'f'),
       ('Daniel', 'Roberts', 'Alexander', 'm'),
       ('Sophia', 'Miller', '', 'f'),
       ('William', 'Harris', 'Edward', 'm'),
       ('Ava', 'Clark', 'Louise', 'f'),
       ('James', 'Walker', '', 'm'),
       ('Isabella', 'Lewis', 'Jane', 'f'),
       ('Benjamin', 'Hall', 'Charles', 'm');

INSERT INTO table_emails(person_id, email)
VALUES (1, 'emily.johnson@example.com'),
       (1, 'emily.johnson.work@example.com'),
       (3, 'olivia.thompson@example.com'),
       (4, 'daniel.roberts@example.com'),
       (6, 'william.harris@example.com'),
       (6, 'william.harris.work@example.com'),
       (8, 'james.walker@example.com'),
       (9, 'isabella.lewis@example.com'),
       (9, 'isabella.lewis.promo@example.com'),
       (10, 'benjamin.hall@example.com');

INSERT INTO table_phone_numbers(person_id, phone_number)
VALUES (2, '+7 901 234-56-78'),
       (2, '+7 901 234-56-79'),
       (3, '+7 912 345-67-80'),
       (5, '+7 913 456-78-81'),
       (5, '+7 913 456-78-82'),
       (7, '+7 914 567-89-83'),
       (8, '+7 915 678-90-84'),
       (10, '+7 916 789-01-85'),
       (10, '+7 916 789-01-86'),
       (1, '+7 917 890-12-87');

INSERT INTO table_discounts(name, value)
VALUES ('Seasonal discount', 05.00),
       ('New customer', 10.50),
       ('Loyalty member', 15.25),
       ('Black Friday', 20.00),
       ('Student discount', 07.50),
       ('Holiday sale', 12.00),
       ('Referral bonus', 08.30),
       ('Birthday offer', 09.99);