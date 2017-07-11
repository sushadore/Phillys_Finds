require 'rails_helper'

describe "sign up user path" do
  it "creates and signs in a new user" do
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'ThisGuy'
    expect(page).to have_content "You've successfully signed up!"
  end

  it "creates and signs in a new user" do
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: ''
    click_on 'Sign Up'
    expect(page).to have_content 'There was a problem signing up.'
  end
end
