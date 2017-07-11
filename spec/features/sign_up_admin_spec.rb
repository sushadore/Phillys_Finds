require 'rails_helper'

describe "admin sign up path" do
  it "creates and signs in a new admin" do
    product = FactoryGirl.create :product
    visit products_path
    click_on product.name
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    expect(page).to have_content "You've created an admin account."
  end

  it "returns errors if admin sign up is not successful" do
    product = FactoryGirl.create :product
    visit products_path
    click_on product.name
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: ''
    click_on 'Create Admin'
    expect(page).to have_content 'There was a problem creating your account.'
  end
end
