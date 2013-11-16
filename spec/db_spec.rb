require 'spec_helper'

describe Menu do
  it { should have_many(:items).through(:menus_items) }
  it { should validate_presence_of(:title)}
end

describe Item do
  it { should have_many(:menus).through(:menus_items) }
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:cost)}
end