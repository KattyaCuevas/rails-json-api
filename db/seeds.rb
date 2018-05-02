# Users
user1 = User.find_or_create_by(first_name: 'Juan', last_name: 'Ramirez')
user2 = User.find_or_create_by(first_name: 'Maria', last_name: 'Perez')

# Posts
post1 = user1.posts.find_or_create_by(title: 'Primero', body: 'Este es el primero')
post2 = user1.posts.find_or_create_by(title: 'Segundo', body: 'Este es el segundo')
post3 = user2.posts.find_or_create_by(title: 'Tercero', body: 'Este es el tercero')
post4 = user2.posts.find_or_create_by(title: 'Cuarto', body: 'Este es el cuarto')

# Comments
post1.comments.find_or_create_by(body: "No se entiende", user: user2)
post2.comments.find_or_create_by(body: "Muy buena explicación", user: user2)
post3.comments.find_or_create_by(body: "No se entiende", user: user1)
post4.comments.find_or_create_by(body: "Muy buena explicación", user: user1)