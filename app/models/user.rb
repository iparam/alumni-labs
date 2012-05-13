# == Schema Information
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(255)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  name                   :string(255)
#  created_at             :datetime        not null
#  updated_at             :datetime        not null
#  type                   :string(255)
#  alumnii                :boolean
#

class User < ActiveRecord::Base
	rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:alumnii
  # attr_accessible :title, :body
  scope :by_name ,lambda {|name_val|where('name like',"%#{name_val}%") if name_val}
  scope :by_email ,lambda {|name_val|where('email like',"%#{email_val}%") if email_val}
  #add connetcion
  def add_connection(connection_user)
    sort_ids = [self.id,connection_user.id].sort
    $redis.sadd("user:#{sort_ids[0]}:connections", sort_ids[1])
  end
  def is_alumni?
    true
  end
  
end

