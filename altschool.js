// creation of all the entities
// Create Categories Collection
db.createCollection("categories");
// Create Items Collection
db.createCollection("items");
// Create Users Collection
db.createCollection("users");
// Create Orders Collection
db.createCollection("orders");


// Show commands for inserting records into the entities
// Insert a category
db.categories.insert({ name: "Clothings" });
// Insert an item
db.items.insert({
    name: "Laptop",
    price: 1000.00,
    size: "Medium",
    categoryId: 1
});
// Insert a user
db.users.insert({
    name: "Emmanuel",
    type: "user"
});
// Insert an order
db.orders.insert({
    itemId: 1,
    userId: 1,
    date: new Date(),
    status: "Pending"
});

// Show commands for getting records from two or more entities
const item = db.items.findOne({ _id: 1 });
const user = db.users.find({ name: "Emmanuel" });

// Show commands for updating records from two or more entities
db.items.update({ _id: 1 }, { $set: { size: "Large" } });
db.orders.update({ _id: 1 }, { $set: { status: "Aproved" } });

// Show commands for deleting records from two or more entities
db.items.deleteOne({ _id: 1 });
db.orders.deleteOne({ _id: 1 });
