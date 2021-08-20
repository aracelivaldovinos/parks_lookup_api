require 'rails_helper'

describe Bird do 
  it { should validate_presence_of :family_name}
  it { should validate_presence_of :common_name}
  it { should validate_presence_of :color}
  it { should validate_presence_of :geography}
end 