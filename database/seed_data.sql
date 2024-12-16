-- Movie Table
INSERT INTO public."Movie" (title, release_time, date, rating, budget, gross) VALUES
('Harry Potter and the Chamber of Secrets', '14:30:00', '2002-11-15', 100, 100000000, 879500000),
('Avatar', '18:00:00', '2009-12-18', 90, 237000000, 2787965087),
('Spider-Man: Far From Home', '12:00:00', '2019-07-02', 85, 160000000, 1131927996),

--BirthLocation Table
INSERT INTO public."BirthLocation" (country, city, state) VALUES
('Canada', 'Toronto', 'ON'),         
('USA', 'Los Angeles', 'CA'),        
('Canada', 'Vancouver', 'BC'),       

-- University table
INSERT INTO public."University" ( name, is_private, color)
VALUES
  ( 'U of London', FALSE, 'Red'),
  ('USC', TRUE, 'Cardinal'),
  ('NYU', TRUE, 'Violet'),

--Director table
INSERT INTO public."Director" ("first_name", "surname", "year_of_birth", "id_BirthLocation", "id_University")
VALUES
('Chris', 'Columbus', 1967, 1, 3),  
('James', 'Cameron', 1954, 2, 2),   
('Jon', 'Watts', 1981, 3, 4),       

-- Actors Table
INSERT INTO public."Actor" ("first_name", "surname", "year_of_birth", "id_BirthLocation", "eye_color")
VALUES
('Daniel', 'Radcliffe', '1989','1', 'Brown'),  
('Sam', 'Worthington', '1976','3', 'Blue'),   
('Tom', 'Holland', '1996', '3','Green'),       

--Departments Table
INSERT INTO public."Department" ("id_University", "name")
VALUES
(1, 'Computer Science'),
(2, 'Engineering'),
(3, 'Business'),

--MovieActor Table
INSERT INTO public."MovieActor" ("id_Movie", "id_Actor")
VALUES
(1, 1),  
(2, 2),  
(3, 3),  

--Genre Table
INSERT INTO public."Genre" ("type")
VALUES
('Fantasy'),
('Science'),
('Action'),

-- MovieGenre Tanle
INSERT INTO public."MovieGenre" ("id_Movie", "id_Genre")
VALUES
(1, 1), 
(2, 2),  
(3, 3),  

--Awards
INSERT INTO public."Award" ("award_name", "id_Movie")
VALUES
('Best Picture', 1),
('Best Director', 2),
('Best Actor', 3),

--CATEGORY
INSERT INTO public."Category" ("category_name", "award_id_Award", "id_Movie_Award")
VALUES
('Drama', 1, 1),
('Action', 2, 2),
('Comedy', 3, 3),

--CINEMA
INSERT INTO public."Cinema" ("cinema_name", "location", "type")
VALUES
('Cinema 1', 'Downtown', 'IMAX'),
('Cinema 2', 'Mall Center', 'Standard'),
('Cinema 3', 'City Square', '4DX'),

--TICKET
INSERT INTO public."Ticket" ("price", "id_Cinema")
VALUES
(12.50, 1),
(15.00, 2),
(18.00, 3),

--SHOWTIME
INSERT INTO public."ShowTime" ("show_name", "show_time", "show_duration", "id_Cinema_Ticket", "id_Movie")
VALUES
('Morning Show', '10:00:00', 120, 1, 1),
('Afternoon Show', '14:00:00', 130, 2, 2),
('Evening Show', '18:00:00', 110, 3, 3),

