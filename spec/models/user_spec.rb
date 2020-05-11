require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(
    first_name: "Emma",
    surname: "Bindi",
    password: "111111",
    email: "e@gmail.com",
    bio: "Gen Y living in South Yarra, love spending time in my garden growing herbs"
  )}

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a first name' do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a first_name greater than 30 characters' do 
    subject.first_name = "this is a name that is way too long too be valid"
    expect(subject).to_not be_valid
  end

  it 'is not valid without a surname' do
    subject.surname = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a surname greater than 30 characters' do 
    subject.surname = "this is a name that is way too long too be valid"
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do 
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a bio greater than 450 characters' do 
    subject.bio = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    expect(subject).to_not be_valid
  end
end
