class User < ApplicationRecord

  validates :first_name, presence:true, length: { in: 2..60 }
  validates :last_name, presence:true, length: { in: 2..60 }
  validates :username, presence:true, uniqueness: true, length: { in: 2..20 }
  validates :email, presence:true, uniqueness: true, format: { with: /\A(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})\z/i }, confirmation: true
  validates :email_confirmation, presence:true
  validates :password, presence:true, length: { minimum: 8 }, format: { with: /.*[0-9].*/ }, confirmation: true
  validates :password_confirmation, presence:true
  validates :password_hint, length: { maximum: 100 }

  def full_name
    "#{first_name} #{last_name}"
  end

  before_save :capitalize_names

  private

  def capitalize_names
    self.first_name.capitalize!
    words_to_ignore = ["de", "la", "del"]
    m = self.last_name.split(" ").map{ |i| 
      if words_to_ignore.include?(i.downcase)
        i.downcase
      else
        i.capitalize
      end
    }
    self.last_name = m.join(" ")
  end
end
