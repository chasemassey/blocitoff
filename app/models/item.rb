class Item < ActiveRecord::Base
  belongs_to :user


  def age_in_days
    (DateTime.now.to_date - created_at.to_date).to_i
  end

  def days_left
    7-(age_in_days)
  end
end
