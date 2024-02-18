create database KA;
use KA;

CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

-- Create the Restaurants table
CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(255) NOT NULL
);

-- Create the MenuItems table
CREATE TABLE MenuItems (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    RestaurantID INT,
    Name VARCHAR(100) NOT NULL,
    Price DECIMAL(8, 2) NOT NULL,
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    RestaurantID INT,
    OrderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

-- Create the OrderItems table to track items in each order
CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ItemID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ItemID) REFERENCES MenuItems(ItemID)
);

INSERT INTO Users (Username, Email, Password, Address) VALUES
('AdityaSharma', 'aditya.sharma@example.com', 'pass123', '123 Main St'),
('AishwaryaPatel', 'aishwarya.patel@example.com', 'pass456', '456 Oak Ave'),
('ArjunKumar', 'arjun.kumar@example.com', 'pass789', '789 Maple Ln'),
('BhavyaSingh', 'bhavya.singh@example.com', 'passabc', '321 Pine St'),
('ChetnaMehta', 'chetna.mehta@example.com', 'passdef', '654 Elm Rd'),
('DeepakVerma', 'deepak.verma@example.com', 'passghi', '987 Cedar Dr'),
('EktaKapoor', 'ekta.kapoor@example.com', 'passjkl', '555 Birch Ave'),
('GauravTiwari', 'gaurav.tiwari@example.com', 'passmno', '777 Spruce Blvd'),
('IshitaDesai', 'ishita.desai@example.com', 'passpqr', '888 Oakwood Rd'),
('JaiSinghania', 'jai.singhania@example.com', 'passtu', '222 Redwood Ln'),
('KirtiJoshi', 'kirti.joshi@example.com', 'passvwx', '111 Sequoia St'),
('LalitaSharma', 'lalita.sharma@example.com', 'passyz', '444 Mahogany Dr'),
('ManishGupta', 'manish.gupta@example.com', 'pass123', '666 Cedar Dr'),
('NidhiMalhotra', 'nidhi.malhotra@example.com', 'pass456', '999 Oakwood Rd'),
('OmkarRajput', 'omkar.rajput@example.com', 'pass789', '333 Pine St'),
('PoojaReddy', 'pooja.reddy@example.com', 'passabc', '444 Birch Ave'),
('RahulChoudhary', 'rahul.choudhary@example.com', 'passdef', '777 Maple Ln'),
('SnehaSrinivasan', 'sneha.srinivasan@example.com', 'passghi', '888 Redwood Ln'),
('TarunYadav', 'tarun.yadav@example.com', 'passjkl', '111 Sequoia St'),
('VaishaliRana', 'vaishali.rana@example.com', 'passmno', '222 Cedar Dr');
select * from Users;

INSERT INTO Restaurants (Name, Location) VALUES
('Spice Delight', '123 Masala Street'),
('Curry House', '456 Biryani Avenue'),
('Saffron Flavors', '789 Tandoori Lane'),
('Chaat Corner', '321 Street of Samosas'),
('Dosa Junction', '654 Idli Plaza'),
('Paneer Palace', '987 Shahi Nagar'),
('Bhindi Bazaar', '555 Korma Road'),
('Vada Pav Paradise', '777 Pav Lane'),
('Butter Chicken Bliss', '888 Roti Circle'),
('Chai Chokha', '222 Kulhad Chai Street'),
('Dhokla Delights', '111 Dhokla Drive'),
('Jalebi Junction', '444 Sweet Lane'),
('Samosa Street', '666 Chutney Boulevard'),
('Tandoor Terrace', '999 Kabab Garden'),
('Bhature Bistro', '333 Lassi Lane'),
('Gulab Jamun Gardens', '444 Dessert Avenue'),
('Pakora Plaza', '777 Chaat Street'),
('Kebab Kingdom', '888 Grill Lane'),
('Biryani Bliss', '111 Pulao Plaza'),
('Rajma Retreat', '222 Dal Avenue');
select * from Restaurants;

-- Assuming you have RestaurantIDs 1 to 10 for the Restaurants added in previous responses

INSERT INTO MenuItems (RestaurantID, Name, Price)
VALUES
-- Restaurant 1
(1, 'Chicken Biryani', 12.99),
(1, 'Paneer Tikka', 8.99),
(1, 'Butter Chicken', 14.99),
(1, 'Veg Pulao', 9.99),
-- Restaurant 2
(2, 'Masala Dosa', 7.99),
(2, 'Chole Bhature', 10.99),
(2, 'Samosa Chaat', 6.99),
(2, 'Rajma Chawal', 12.99),
-- Restaurant 3
(3, 'Aloo Paratha', 9.99),
(3, 'Chicken Korma', 13.99),
(3, 'Pav Bhaji', 8.99),
(3, 'Gulab Jamun', 5.99),
-- Restaurant 4
(4, 'Tandoori Roti', 2.99),
(4, 'Dal Makhani', 11.99),
(4, 'Fish Curry', 15.99),
(4, 'Jalebi', 6.99),
-- Restaurant 5
(5, 'Idli Sambhar', 6.99),
(5, 'Chicken Fry', 13.99),
(5, 'Biriyani', 12.99),
(5, 'Kheer', 5.99);
select * from MenuItems;

-- Assuming you have UserIDs 1 to 10 and RestaurantIDs 1 to 10

INSERT INTO Orders (UserID, RestaurantID)
VALUES
-- Order 1
(1, 1),
-- Order 2
(2, 2),
-- Order 3
(3, 3),
-- Order 4
(4, 4),
-- Order 5
(5, 5),
-- Order 6
(6, 6),
-- Order 7
(7, 7),
-- Order 8
(8, 8),
-- Order 9
(9, 9),
-- Order 10
(10, 10),
-- Order 11
(1, 2),
-- Order 12
(2, 3),
-- Order 13
(3, 4),
-- Order 14
(4, 5),
-- Order 15
(5, 6),
-- Order 16
(6, 7),
-- Order 17
(7, 8),
-- Order 18
(8, 9),
-- Order 19
(9, 10),
-- Order 20
(10, 1);
select * from Orders;


-- Assuming you have OrderIDs, ItemIDs, and Quantities available

INSERT INTO OrderItems (OrderID, ItemID, Quantity)
VALUES
-- Order 1
(1, 1, 2),
(1, 3, 1),
-- Order 2
(2, 2, 1),
(2, 4, 2),
-- Order 3
(3, 1, 3),
(3, 3, 1),
-- Order 4
(4, 2, 2),
(4, 4, 1),
-- Order 5
(5, 1, 1),
(5, 3, 2),
-- Order 6
(6, 2, 1),
(6, 4, 1),
-- Order 7
(7, 1, 2),
(7, 3, 2),
-- Order 8
(8, 2, 2),
(8, 4, 1),
-- Order 9
(9, 1, 1),
(9, 3, 1),
-- Order 10
(10, 2, 3),
(10, 4, 1);
select * from OrderItems;

SELECT Users.Username, Users.Email, Orders.OrderID, Orders.OrderDate
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID;

SELECT Orders.OrderID, MenuItems.Name AS MenuItem, MenuItems.Price, OrderItems.Quantity
FROM Orders
JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
JOIN MenuItems ON OrderItems.ItemID = MenuItems.ItemID;


SELECT Users.Username, Orders.OrderID, Restaurants.Name AS Restaurant, Orders.OrderDate
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID
JOIN Restaurants ON Orders.RestaurantID = Restaurants.RestaurantID;

SELECT Users.Username, Orders.OrderID, MenuItems.Name AS MenuItem, OrderItems.Quantity
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID
JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
JOIN MenuItems ON OrderItems.ItemID = MenuItems.ItemID;

SELECT Username
FROM Users
WHERE UserID IN (SELECT DISTINCT UserID FROM Orders);

SELECT Name, Price
FROM MenuItems
WHERE Price > (SELECT AVG(Price) FROM MenuItems);

SELECT OrderID, UserID
FROM Orders
WHERE (SELECT MAX(Quantity) FROM OrderItems WHERE OrderID = Orders.OrderID) > 2;

SELECT Name, Location
FROM Restaurants
WHERE RestaurantID = (SELECT RestaurantID FROM MenuItems ORDER BY Price DESC LIMIT 1);

SELECT Username
FROM Users
WHERE UserID IN (SELECT UserID FROM Orders GROUP BY UserID HAVING COUNT(*) > 1);








