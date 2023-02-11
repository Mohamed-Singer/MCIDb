class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: %i[facebook]

  def self.from_omniauth(auth)
    User.find_by(provider: auth.provider, uid: auth.uid) ||
      User.create!(provider: auth.provider, uid: auth.uid, name: auth.info.name)
  end
end
