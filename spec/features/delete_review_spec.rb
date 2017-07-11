require 'rails_helper'

describe "delete review path" do
  it "deletes a review" do
    product = FactoryGirl.create :product
    review = FactoryGirl.create :review
    visit product_path(product)
    # click_on 'Sign up'
    # fill_in 'Email', with: 'somemail@mail.com'
    # fill_in 'Username', with: 'ThisGuy'
    # fill_in 'Password', with: 'password'
    # fill_in 'Password confirmation', with: 'password'
    # click_on 'Sign Up'
    # click_on product.name
    # click_on 'Review Product'
    # fill_in 'Author', with: 'ThisGuy'
    # fill_in 'Review', with: 'Chuck Norris can slam a revolving door.'
    # fill_in 'Rating', with: 4
    # click_on 'Create Review'
    # click_on 'Sign out'
    # click_on product.name
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    click_on product.name
    click_on 'Delete Review'
    expect(page).to have_content ''
  end
end
