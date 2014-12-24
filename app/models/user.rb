class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :authentication_keys => [:netID] 
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :netID,  presence: true, 
                            uniqueness: true,
                            format: {
                              with: /\A[a-zA-Z\-\_\.]+\Z/,
                              message: "Must be formatted correctly"
                            }
  
  
  has_many :listings
  
  def email()
    "#{netID}@tamu.edu"
  end
  
  def full_name()
    "#{first_name} #{last_name}"
  end
  
  def gravatar_url()
    stripped_email = email.strip
    lc_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(lc_email)
    "http://gravatar.com/avatar/#{hash}"
  end
end
