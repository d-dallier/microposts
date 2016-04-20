class User < ActiveRecord::Base
    before_save{self.email = self.email.downcase}
    validates :name, presence: true, length: {maximum:50}
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255},
                      format: {with: VALID_EMAIL_REGEX},
                      uniqueness: {case_sensitive: false}
    has_secure_password
    
    validates :profile, length: {maximum: 255}
    validates :publish_email, length: {maximum: 255},
                      format: {with: VALID_EMAIL_REGEX, allow_blank: true}
    validates :place, length: {maximum: 10}
end
