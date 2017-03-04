class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :user_quizzes
  has_many :quizzes, through: :user_quizzes

  has_many :user_choices
  has_many :choices, through: :user_choices
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
