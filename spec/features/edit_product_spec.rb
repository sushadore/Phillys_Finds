require 'rails_helper'

describe "edit product path" do
  it "edits product detail" do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    click_on 'Irish Flute'
    click_on 'Edit Product'
    fill_in 'Name', with: 'Piccolo'
    click_on 'Update Product'
    expect(page).to have_content 'Piccolo'
  end

  it "edits product detail" do
    product = FactoryGirl.create(:product)
    visit product_path(product)
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    click_on 'Irish Flute'
    click_on 'Edit Product'
    fill_in 'Name', with: ''
    click_on 'Update Product'
    expect(page).to have_content 'errors'
  end
end
