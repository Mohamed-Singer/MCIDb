require 'rails_helper'

RSpec.describe AwardWin, type: :model do
  it { should belong_to(:award) }
  it { should belong_to(:winner) }
  it { should validate_length_of(:year_won).is_equal_to(4) }
  it { should validate_numericality_of(:year_won) }
  it { should validate_presence_of(:year_won) }
end
