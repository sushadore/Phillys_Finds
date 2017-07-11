require 'rails_helper'

describe "add product path" do
  it "adds a new product" do
    product = FactoryGirl.create(:product)
    visit products_path
    click_on product.name
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    click_on 'Add Product'
    fill_in 'Product Name', with: 'Piccolo'
    fill_in 'Product Description', with: "Chuck Norris doesn't read books. He stares them down until he gets the information he wants."
    fill_in 'Product Price', with: '34.99'
    click_on 'Create Product'
    expect(page).to have_content('Piccolo')
  end

  it "returns error when field is left blank" do
    product = FactoryGirl.create(:product)
    visit products_path
    click_on product.name
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    click_on 'Add Product'
    click_on 'Create Product'
  expect(page).to have_content 'errors'
end
end
