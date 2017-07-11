require 'rails_helper'

describe "delete product path" do
  it "deletes a product" do
    product = FactoryGirl.create :product
    visit product_path(product)
    click_on 'Admin'
    click_on 'Sign Up'
    fill_in 'Email', with: 'admin@admail.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_on 'Create Admin'
    click_on product.name
    click_on 'Delete Product'
    expect(page).to have_content ''
  end
end
