require 'rails_helper'

describe "add review path" do
  it "adds a new review" do
    product = FactoryGirl.create :product
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    click_on product.name
    click_on 'Review Product'
    fill_in 'Author', with: 'ThisGuy'
    fill_in 'Review', with: 'Chuck Norris can slam a revolving door.'
    fill_in 'Rating', with: 4
    click_on 'Create Review'
    expect(page).to have_content 'Chuck Norris can slam a revolving door.'
  end

  it "returns error when field is left blank" do
    product = FactoryGirl.create :product
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    click_on product.name
    click_on 'Review Product'
    click_on 'Create Review'
    expect(page).to have_content 'errors'
  end
end
