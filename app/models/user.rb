class User < ApplicationRecord

  has_many :reactions
  has_many :user_rooms, dependent: :destroy
  has_many :chats, dependent: :destroy

  has_many :chat_room_users
  has_many :chat_rooms, through: :chat_room_users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
end
