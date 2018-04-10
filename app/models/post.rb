class Post < ActiveRecord::Base
  validate :click_bait
  validates :title, presence: true
  validates :content, length: {minimum: 250 }
  validates :summary, length: {maximum: 250 }
  validates :category, inclusion: {in: ['Fiction','Non-Fiction']}
  

  def click_bait
    result = false
    ["Won't Believe","Secret","Top","Guess"].each do |x|
      if title.include?(x)
        result = true
      end
    end
    if !result
       errors.add(:title, "not clickbait-y")
    end
  end
end
