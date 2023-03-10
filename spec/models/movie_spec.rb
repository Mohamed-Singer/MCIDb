require 'rails_helper'

RSpec.describe Movie, type: :model do
  it { should have_and_belong_to_many(:actors) }
  it { should have_many(:award_wins) }
  it { should belong_to(:director) }
  it { should belong_to(:genre) }
  it { should belong_to(:rating) }
  it { should validate_length_of(:title).is_at_most(250) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:release_date) }
end
