require 'rails_helper'

RSpec.describe AdminUser, type: :model do
  it { should have_many(:news_pieces) }
end
