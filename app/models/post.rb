class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250 }
  validates :summary, length: {maximum: 250 }
  validates :category, inclusion: {in: ['Fiction','Non-Fiction']}
  validates :click_bait

  def click_bait
    
  end
end
