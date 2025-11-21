select * from [user]
select * from REVIEW
select * from RESERVATION
select * from PROPERTY_AMENITY
select * from PROPERTY
select * from PAYMENT
select * from LOCATION
select * from AMENITY

DELETE FROM [USER];
DBCC CHECKIDENT ('[USER]', RESEED, 0);

INSERT INTO [USER] (Username, Email, Password, Phone_Number, Date_Of_Birth) VALUES
('dimitarVelev','dimitar.velev@gmail.com','b3stP@ss','088123476','1987-01-20'),
('misho_manev','misho_manev@abv.bg','m1sho123','0876539876','1999-02-19'),
('slavi_milev','s.milevv@gmail.com','slavSl93','0891234567','1993-05-22'),
('iva_peneva','iva.peneva@gmail.com','artSpirit','0897896514','1991-04-14'),
('petya_ilieva','petya.ilieva@gmail.com','pretty123','0789614235','2002-03-18'),
('niki_kirova','niki.kirova@gmail.com','testT3st','0894335678','1994-07-20'),
('marry_todorova','mary.todorova23@gmail.com','Qwerty123','089563749','1994-01-13'),
('ivan_ivanov','i.ivanov@gmail.com','ivanpass12','0896254837','2001-11-20'),
('georgi_hristov','georgi.h@gmail.com','geoPass1','0897645123','1988-08-08'),
('katrin_slavova','kat.slav@gmail.com','katPass8','0897123456','1995-12-11');


INSERT INTO LOCATION (Address, Country_Code, City) VALUES
('Sofia, Vitosha Blvd 25','BG','Sofia'),
('Plovdiv, Kapana 13','BG','Plovdiv'),
('Varna, Slivnitsa 90','BG','Varna'),
('Burgas, Alexandrovska 41','BG','Burgas'),
('Ruse, Dunav Str 5','BG','Ruse'),
('Veliko Tarnovo, Gurko 19','BG','Veliko Tarnovo'),
('Sofia, Studentski Grad 88','BG','Sofia'),
('Plovdiv, Trakia Quarter 45','BG','Plovdiv'),
('Varna, Asparuhovo 12','BG','Varna'),
('Bansko, Pirin Street 3','BG','Bansko');



INSERT INTO AMENITY (Name) VALUES
('WiFi'),
('Air Conditioning'),
('Parking'),
('Pool'),
('Pet Friendly'),
('Balcony'),
('Kitchen'),
('Heating'),
('TV'),
('Elevator'),
('Garden'),
('Washer');


INSERT INTO PROPERTY (Name, Description, Price, Location_ID) VALUES
('Sofia Central Apartment','Modern apartment in center.',80,1),
('Kapana Loft Plovdiv','Art loft near bars.',70,2),
('Varna Sea View','Sea view suite.',120,3),
('Burgas Beach House','House near beach.',150,4),
('Ruse Riverside Flat','Flat with river view.',60,5),
('Tarnovo Old Town Studio','Studio in old city.',55,6),
('Sofia Student Apartment','Budget flat.',40,7),
('Plovdiv Cozy Home','Quiet area.',50,8),
('Varna Garden Home','House with garden.',90,9),
('Bansko Mountain Lodge','Mountain stay.',130,10),
('Sofia Luxury Suite','Premium downtown suite.',160,1),
('Burgas Modern Apartment','Modern apartment.',75,4);
 

 INSERT INTO PROPERTY_AMENITY (Property_ID, Amenity_ID) VALUES
(1,1),(1,2),(1,9),
(2,1),(2,9),(2,5),
(3,1),(3,4),(3,6),
(4,1),(4,3),(4,4),
(5,1),(5,8),
(6,1),(6,7),(6,9);


INSERT INTO RESERVATION (User_ID,Property_ID,Status,Amount,GuestsNumber,Check_In_Time,Check_Out_Time) VALUES
(1,1,'Completed',160,2,'2024-03-10','2024-03-12'),
(2,2,'Completed',210,3,'2024-04-05','2024-04-08'),
(3,3,'Completed',360,2,'2024-07-10','2024-07-13'),
(5,5,'Completed',120,2,'2024-01-20','2024-01-22'),
(6,6,'Completed',110,1,'2024-09-02','2024-09-04'),
(7,7,'Completed',80,1,'2024-11-12','2024-11-14'),
(8,8,'Pending',100,2,'2024-05-01','2024-05-03'),
(9,9,'Completed',270,3,'2024-06-05','2024-06-08'),
(10,10,'Completed',390,3,'2024-12-20','2024-12-23'),
(1,11,'Completed',320,2,'2024-03-25','2024-03-27'),
(2,12,'Completed',150,2,'2024-08-10','2024-08-12'),
(3,1,'Pending',80,1,'2024-10-05','2024-10-06'),
(4,3,'Completed',480,4,'2024-07-20','2024-07-24'),
(5,10,'Completed',260,2,'2024-12-15','2024-12-17');


INSERT INTO PAYMENT (Reservation_ID,Amount,Status,TimeStamp) VALUES
(1,160,'Paid','2024-03-01'),
(2,210,'Paid','2024-03-30'),
(3,360,'Paid','2024-07-01'),
(5,120,'Paid','2024-01-10'),
(6,110,'Paid','2024-08-20'),
(7,80,'Paid','2024-11-05'),
(8,100,'Pending','2024-04-28'),
(9,270,'Paid','2024-05-28'),
(10,390,'Paid','2024-12-05'),
(11,320,'Paid','2024-03-20'),
(12,150,'Paid','2024-08-01'),
(14,480,'Paid','2024-07-10');


INSERT INTO REVIEW (User_ID,Reservation_ID,Rating,Content) VALUES
(1,1,4,'Nice place, very central.'),
(2,2,5,'Amazing loft!'),
(3,3,5,'Great sea view, wonderful stay.'),
(5,5,3,'Good value for money.'),
(6,6,4,'Quiet and cozy studio.'),
(7,7,4,'Simple but clean.'),
(9,9,5,'Loved the garden!'),
(10,10,5,'Perfect winter getaway.'),
(1,11,4,'Luxury suite but expensive.'),
(2,12,5,'Modern and clean apartment.');


