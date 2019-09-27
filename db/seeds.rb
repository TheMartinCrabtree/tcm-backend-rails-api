# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(firstname: "Franky", lastname: "Frankerson", username: "frankfrankfrank", billinginfo: "insecure info", password: "password123");
user2 = User.create(firstname: "Ali", lastname: "Alierson", username: "aliAliAli", billinginfo: "insecure info", password: "password123");
user3 = User.create(firstname: "Lisar", lastname: "Lisaerson", username: "LisLis", billinginfo: "insecure info", password: "password123");
user4 = User.create(firstname: "Robby", lastname: "Robberson", username: "betobetobeto", billinginfo: "insecure info", password: "password123");


item1=Item.create(itemname: "first item", category: "cat1", description: "best cat1 ever", price: 4.00, currentstock: "50", imageid: 1);
item2=Item.create(itemname: "second item", category: "cat2", description: "best cat2 ever", price: 2.55, currentstock: "20", imageid: 2);
item3=Item.create(itemname: "third item", category: "cat3", description: "best cat3 ever", price: 9.99, currentstock: "77", imageid: 3);

