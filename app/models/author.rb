class Author < ActiveRecord::Base
   validates :name, length: { minimum: 1 }
   validates :email, uniqueness: true 
end

# The name cannot be blank
# The e-mail is unique