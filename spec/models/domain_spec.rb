require 'rails_helper'

RSpec.describe Domain, type: :model do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should allow_value("name@domain.com").for(:name)}
  it { should_not allow_value("name.domain.com").for(:name)}
end
