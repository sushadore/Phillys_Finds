require 'rails_helper'

describe Review do
  it { should belong_to :product }
  it { should validate_presence_of :author }
  it { should validate_numericality_of :rating }
  it { should validate_inclusion_of(:rating).in_range(1..5).with_message("Rating must be between 1 and 5") }
  it { should validate_presence_of(:content) }
end
