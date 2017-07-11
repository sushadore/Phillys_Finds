require 'rails_helper'

describe "admin sign up path" do
  it "creates and signs in a new admin" do
    product = FactoryGirl.create(:product)
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

  it "creates and signs in a new admin" do
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    fill_in 'Password confirmation', with: ''
    click_on 'Sign Up'
    expect(page).to have_content 'There was a problem signing up.'
  end
end
