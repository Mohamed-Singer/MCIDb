require 'rails_helper'

RSpec.describe NewsPiece, type: :model do
  it { should belong_to(:admin_user) }
  it { should validate_length_of(:title).is_at_most(250) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }
end
