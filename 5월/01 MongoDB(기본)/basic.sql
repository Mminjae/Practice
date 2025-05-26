2페이지

> use tutorial

> db.users.insert({username: "smith"})

> db.users.insert({username: " jones"})

> db.users.find()

> db.users.findOne()

3페이지

> db.users.find({username: "jones"})

> db.users.find({ $or: [
{ username: "smith" },
{ username: "jones" }
]})

4페이지

> db.users.update({username: "smith"}, {$set: {country: "Canada"}})

> db.users.find({username: "smith"})

5페이지

> db.users.update({username: "smith"}, {country: "Canada"})
> db.users.find({country: "Canada"})

> db.users.update({country: "Canada"}, {$set: {username: "smith", country: "Canada"}})
> db.users.find({username: "smith"})

6페이지

> db.users.update({username: "smith"}, {$unset: {country: 1}})
> db.users.find({username: "smith"})

7페이지

> show dbs
> show collections
> db.status()
> db.users.status()

8페이지

> db.users.remove({username: "smith"})
> db.users.find({username: "smith"})
> db.users.remove({})
> db.users.find()
> db.users.drop()

10페이지

> 	use test;
	for(let i=0; i<20000; i++) {
	db.product.insert({
		num: i,
		name: '스마트폰 ' + i
	});
   }

> db.product.count();

11페이지

> db.product.find().sort({num: -1});
> db.product.find().sort({num: -1}).limit(10);
> db.product.find()
.sort({num: -1})
.skip(10*(6-1))
.limit(10);


12페이지

db.product.find({ $or:
	[
		{num: {$lt: 15}},
		{num: {$gt: 19995}},
	]
   });


db.product.find({ name:
   {$in: ['스마트폰 10', '스마트폰 100', '스마트폰 1000']}
});

13 페이지

db.product.find({num: {$lt: 5}}, {_id:0, name:1})
