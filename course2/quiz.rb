# 1.) You create tables that have relationships with each other.
# 2.) A language that is used for querying relational dbs
# 3.) Data and schema views. Data view shows the actual records of the database. Schema shows the layout of each table
# 4.) Primary key
# 5.) A foreign key is used to identify a relationship between two tables. For example, user and essay. A user has many essays. So, you would have the user_id in the essay table.
# 6.) You use ActiveRecord to access the db. Through it, you can create, get, update, and delete objects in the db.
# 7.) crazy_monkeys
# 8.) Project has many issues and Issues belong_to Projects. Issues would have a project_id as a foreign key
# 9.) class Animal
#      belongs_to :zoo
#     end
# zoo has primary key of id
# animal has primary key of id and foreign key of zoo_id
# 10.) Mass assignment allows multiple values to be set at once. Post.create(name: "First post", description: "This is my first post.")
# Non-mass; post = Post.new; post.title = "First Post"; post.description = "Hello there"
# 11.) Retrieves the first record of Animal
# 12.)@animal = Animal.new(name: 'Joe')
#     @animal.save
# 13.) Need to create a join table that contains a foreign key of both the relating tables
# 14.) has_many through: and has_and_belongs_to_many
#  has_many through: ; requires a join table and model
# the other, doesn't require a join model, but it requires a table
# 15.) A join model needs to be created (UserGroup) for the tables
# class User < ActiveRecord::Base
#   has_many :user_groups
#   has_many :groups, through: user_groups
# end
#
# class UserGroup < ActiveRecord::Base
#   belongs_to :user
#   belongs_to :group
# end
#
# class Group < ActiveRecord::Base
#   has_many :user_groups
#   has_many :users, through: user_groups
# end
