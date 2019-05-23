User.create(username: "vroomvroom", password: "mazda", course: "Software Engineering - In-Person", city: "London")
User.create(username: "michaeljordan21", password: "bulls4eva", course: "Data Science - In-Person", city: "Chicago")
User.create(username: "janetrogers", password: "coding", course: "Software Engineering - Online", city: "New York City")

Post.create(user_id: 1, content: "I took this course because I really want to learn to code.  It is stressing me out though.  Will it get easier?")
Post.create(user_id: 2, content: "I feel like the bulls just are not doing as well as I want them to do.  It is frustrating and sometimes breaks my heart.  Thanks for your support")
Post.create(user_id: 3, content: "Online courses are fun!  But I do not feel as close to my classmates.  Do you have any advice?")

Clap.create(user_id: 1, post_id: 2)
Clap.create(user_id: 2, post_id: 3)
Clap.create(user_id: 3, post_id: 1)
