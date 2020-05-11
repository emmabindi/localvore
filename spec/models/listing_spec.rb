require 'rails_helper'

RSpec.describe Listing, type: :model do
  let(:category) { Category.new }
  let(:uom) { Uom.new }

  subject { described_class.new(
    title: 'Cauliflower',
    price: 2.00,
    qty: 1,
    description: "Monster purple cauliflower, organically grown",
    category: category,
    uom: uom
  )}

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do 
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a title longer than 30 characters' do
    subject.title = 'This is a title that is way too long and wont fit in our app'
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price even if that price is free' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a quantity' do
    subject.qty = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a category selected' do
    subject.category = nil 
    expect(subject).to_not be_valid
  end

  it 'is not valid without a uom selected' do
    subject.uom = nil 
    expect(subject).to_not be_valid
  end
end
