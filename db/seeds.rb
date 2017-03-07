 require 'random_data'

 50.times do
   Post.create!(
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all
 
 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 unique = Post.find_or_create_by(title: "Beware the difference", body: "Mind the difference between salt, smelling salt, and bath salt.")

 unique.comments.find_or_create_by(body: "Uh what..?")
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 