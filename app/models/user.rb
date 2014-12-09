class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 

 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



paginates_per 4

validates :nome, presence: true, uniqueness: true, length: {maximum: 45}
validates :login, presence: true, uniqueness: true

	
	validates_format_of :email, :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/, message: " incorreto."

validates :sobre_voce, presence: true
validates :avatar, presence: true
validates :cidade, presence: true
validates :estado, presence: true


 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
