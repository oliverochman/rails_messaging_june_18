class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include DeviseTokenAuth::Concerns::User

  devise :omniauthable, omniauth_providers: [:facebook]

  validates :name, length: { maximum: 10 }
  validates :name, presence: true
  validates :password, presence: true
  validates_uniqueness_of :name

  acts_as_messageable

  def mailboxer_name
    name
  end

  def mailboxer_email(object)
    email
  end

  private

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session['devise.facebook_data'] && session['devise.facebook_data']['extra']['raw_info']
        user.email = data['email'] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      #user.name = auth.info.name
      user.password = Devise.friendly_token[0,20]
      #user.image = auth.info.image # assuming the user model has an image
    end
  end
end
