require 'rails_helper'

describe "Author Model", type: :model do
  it 'should have first name, last name and homepage' do
    first_name = "Alan"
    last_name = "Turing"
    homepage = "http://wikipedia.org/Alan_Turing"

    author = Author.new(first_name: first_name, last_name: last_name, homepage: homepage)

    expect(author.first_name).to eq(first_name)
    expect(author.last_name).to eq(last_name)
    expect(author.homepage).to eq(homepage)
  end

  it 'should have a full name getter' do
    first_name = "Alan"
    last_name = "Turing"
    homepage = "http://wikipedia.org/Alan_Turing"

    author = Author.new(first_name: first_name, last_name: last_name, homepage: homepage)

    expect(author.name).to eq(first_name + " " + last_name)
  end
end