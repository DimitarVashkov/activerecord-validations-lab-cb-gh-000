class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250 }
  validates :summary, length: {maximum: 250 }
  validates :category, inclusion: {in: ['Fiction','Non-Fiction']}
  validates :click_bait

  def click_bait
    result = false
    ["Won't Believe","Secret","Top","Guess"].each do |x|
      if self.title.include?(x)
        result = true
      end
    end
    result
  end
end
