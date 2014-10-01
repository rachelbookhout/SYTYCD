class Dancer < ActiveRecord::Base
has_many :performances

 def self.search(query)
    where("first_name like ?", "%#{query}%")
  end

end
