class Choice < ApplicationRecord
  belongs_to :question
  has_many :user_choices
  has_many :users, through: :user_choices
end
