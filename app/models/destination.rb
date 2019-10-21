class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts


def featured_post
    self.posts.max_by  do|post| post.likes end
end

def bloggers_average_age
    guys = []
   self.bloggers.each do |bloggers|  guys << bloggers end
    guys.uniq!
x = 0
    guys.each do |guy|
         x += guy.age 
    end
    average = 0
    if guys.length > 0
    average =x.to_f/guys.length
    end
    return average
end

def latest_posts
 self.posts.last(5)
end
end
