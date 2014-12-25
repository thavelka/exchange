class Listing < ActiveRecord::Base

  validates :title, presence: true
  validates :condition, presence: true
  validates :price, presence: true,
            format: {
              with: /([1-9][0-9]*)|0/,
              message: "Numbers only"
            }
  validates :ISBN, format: {
              with: /([1-9][0-9]*)|0/,
              message: "Numbers only"
            }

  belongs_to :user
  def self.search(query)
    @query.to_s.gsub!(/\W/)
    # where(:title, query) -> This would return an exact match of the query
  where("title like ? OR ISBN like ?", "%#{query}%", "%#{query}%")
  end
end
