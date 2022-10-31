require 'rails_helper'

describe "Index author page", type: :feature do
  it 'should have a link for the creation of new authors' do
    visit authors_path

    expect(page).to have_link href: new_author_path
  end
end
