-- --------------------------------------
--  POPULATE Books
-- --------------------------------------

INSERT INTO `Books` VALUES (1234567891234, 'Crepes Galore!', 1111, 22222, 30, 300, 333333, 15, 'Romance');
INSERT INTO `Books` VALUES (1234567891235, 'Space Invaders: The Book', 1112, 22223, 24, 240, 333334, 2, 'Sci-Fi');
INSERT INTO `Books` VALUES (1234567891236, 'Oh But How!', 1113, 22224, 12, 500, 333335, 4, 'Romance');
INSERT INTO `Books` VALUES (1234567891237, 'Brie Cheese: A Historical Review', 1114, 22225, 30, 300, 333336, 3, 'History');

-- --------------------------------------
--  POPULATE Publishers
-- --------------------------------------

INSERT INTO `Publishers` VALUES (1221, 'MIT Publishing House', '77 Massachusetts Avenue, Cambridge, USA', 2000 );
INSERT INTO `Publishers` VALUES (1222, 'The Penguin Publishing', '44 Main Avenue, Cambridge, USA', 3000 );
INSERT INTO `Publishers` VALUES (1223, 'The Learned Publishing Company', '54 George Avenue, Cambridge, USA', 7000 );
INSERT INTO `Publishers` VALUES (1224, 'The Juice Publishing Co.', '3 Maple Avenue, New York, USA', 10000 );

-- --------------------------------------
--  POPULATE Authors
-- --------------------------------------

INSERT INTO `Authors` VALUES (7654, 'Milan Kundera');
INSERT INTO `Authors` VALUES (7653, 'Stephen King');
INSERT INTO `Authors` VALUES (7652, 'Jason Bourne');
INSERT INTO `Authors` VALUES (7651, 'Pauline Michelle');
INSERT INTO `Authors` VALUES (7650, 'Ramit Sethi');


-- --------------------------------------
--  POPULATE Editors
-- --------------------------------------

INSERT INTO `Editors` VALUES (123,'John Appleseed','2 Star Street, Cambridge, USA');
INSERT INTO `Editors` VALUES (124,'Bob Jordan','7 Apple Street, Cambridge, USA');
INSERT INTO `Editors` VALUES (125,'Christina Joseph','3 Mango Street, Cambridge, USA' );
INSERT INTO `Editors` VALUES (126,'Mary Fiono', '8 Planet Street, Cambridge, USA' );
INSERT INTO `Editors` VALUES (127,'Harris Star', '5 Smart Street, Cambridge, USA' );

-- --------------------------------------
--  POPULATE Orders
-- --------------------------------------

INSERT INTO `Orders` VALUES (1111111111, 'June 3, 2022', 8765, 1234567891234, 60);
INSERT INTO `Orders` VALUES (1111111112, 'June 7, 2022', 8764, 1234567891235, 24);
INSERT INTO `Orders` VALUES (1111111113, 'July 16, 2022', 8763, 1234567891236, 24);
INSERT INTO `Orders` VALUES (1111111114, 'Auguest 3, 2022', 8762, 1234567891237, 30);

-- --------------------------------------
--  POPULATE Customers
-- --------------------------------------

INSERT INTO `Customers` VALUES (8765,'John Red', 8727963, '5 Orange Street, Cambridge, USA',1111111111);
INSERT INTO `Customers` VALUES (8764,'Joseph Blue', 8742343, '9 Tangerine Street, Cambridge, USA', 1111111112);
INSERT INTO `Customers` VALUES (8763,'Lauren Raphael', 8654321, ' 2 ABC Street, Chicago, USA', 1111111113);
INSERT INTO `Customers` VALUES (8762,'Bobby Cat', 65432132, '1 TDI Street, Miami USA',1111111114);

