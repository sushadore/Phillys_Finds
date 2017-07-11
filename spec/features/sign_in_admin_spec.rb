require 'rails_helper'

describe "admin sign in path" do
  it "signs in an admin" do
    product = FactoryGirl.create(:product)
    visit products_path
    click_on product.name
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    click_on 'Irish Flute'
    click_on 'Sign out'
    click_on 'Irish Flute'
    click_on 'Admin'
    click_on 'Log In'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    click_on 'Log In'
    expect(page).to have_content("You're signed in.")
  end
    it "signs out an admin" do
      product = FactoryGirl.create(:product)
      visit products_path
      click_on product.name
      click_on 'Admin'
      click_on 'Sign Up'
      fill_in 'Email', with: 'admin@admail.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_on 'Create Admin'
      click_on 'Irish Flute'
      click_on 'Sign out'
      expect(page).to have_content("You're signed out.")
  end
end
