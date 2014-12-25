class Listing < ActiveRecord::Base
belongs_to :user
def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
  where("title like ? OR ISBN like ?", "%#{query}%", "%#{query}%")
  end
end
