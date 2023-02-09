require 'rails_helper'

RSpec.describe Actor, type: :model do
  it { should validate_length_of(:name).is_at_most(250) }
  it { should validate_presence_of(:name) }
end
