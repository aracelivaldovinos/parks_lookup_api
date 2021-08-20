require 'rails_helper'

describe Park do 
  it { should validate_presence_of :area}
  it { should validate_presence_of :description }
  it { should validate_presence_of :state }
  it { should validate_presence_of :name }
end 
