class Item < ActiveRecord::Base
  belongs_to :user

  enum status: [:incomplete, :complete]
  
end
