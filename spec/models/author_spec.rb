describe "Author Model", type: :model do
  it 'should have first name, last name and homepage' do

  end

  it 'should have a full name getter' do
    author = Author.new
    author.first_name = "Alan"
    author.last_name = "Turing"
    author.homepage = "http://wikipedia.org/Alan_Turing"

    expect(author.name).to eq("Alan Turing")
  end
end