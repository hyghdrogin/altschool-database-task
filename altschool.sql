-- Creation of all the entities
-- Categories table
CREATE TABLE Categories (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);
-- Items table
CREATE TABLE Items (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    size VARCHAR(20),
    categoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(id)
);
-- Users table
CREATE TABLE Users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    type VARCHAR(20)
);
-- Orders table
CREATE TABLE Orders (
    id INT PRIMARY KEY,
    itemID INT,
    userID INT,
    date DATE,
    status VARCHAR(20),
    FOREIGN KEY (itemID) REFERENCES Items(id),
    FOREIGN KEY (userID) REFERENCES Users(id)
);


-- Show commands for inserting records into the entities
-- Inserting a category
INSERT INTO Categories (name) VALUES ('Clothings');
-- Inserting an item
INSERT INTO Items (name, price, size, categoryID) VALUES ('Shirt', 8000.00, 'Large', 1);
-- Inserting an order
INSERT INTO Orders (itemID, userID, date, status) VALUES (1, 1, '2023-09-23', 'Pending');
-- Inserting a user
INSERT INTO Users (name, type) VALUES ('Emmanuel', 'user');

-- Show commands for getting records from two or more entities
SELECT Items.name, Items.price, Categories.name
FROM Items
INNER JOIN Categories ON Items.categoryID = Categories.id;

-- Show commands for updating records from two or more entities
UPDATE Items
SET Size = 'medium'
WHERE id = 1;

UPDATE Orders
SET status = 'Approved'
WHERE id = 1;

-- Show commands for deleting records from two or more entities
DELETE FROM Items WHERE id = 1;
DELETE FROM Categories WHERE id = 1;


