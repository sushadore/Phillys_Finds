require 'rails_helper'

describe "user sign in path" do
  it "signs in a user" do
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    click_on  'Sign out'
    click_on 'Sign in'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Password', with: 'password'
    click_on 'Sign In'
    expect(page).to have_content "ThisGuy"
    expect(page).to have_content "You're signed in."
  end

  it "signs out a user" do
    visit products_path
    click_on 'Sign up'
    fill_in 'Email', with: 'somemail@mail.com'
    fill_in 'Username', with: 'ThisGuy'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Sign Up'
    click_on  'Sign out'
    expect(page).to have_content "You've signed out."
  end

end
