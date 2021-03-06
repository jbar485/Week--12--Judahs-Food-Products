require 'rails_helper'

describe "the add a product process" do

  before(:each) do
    visit signup_path
    fill_in 'Email', :with => 'josh.barton@yahoo.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    check('Admin')
    click_on 'Sign Up'
    click_on 'Sign out'
    click_on 'Sign-in'
    fill_in 'Email', :with => 'josh.barton@yahoo.com'
    fill_in 'Password', :with => 'password'
    click_on 'Sign in'
  end

  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Milk'
    fill_in 'Cost', :with => 4
    fill_in 'Country of origin', :with => 'usa'
    fill_in 'Zip', :with => '98642'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Milk'
  end

  it "gives an error when no product is entered" do
    visit new_product_path
    click_on 'Create Product'
    # save_and_open_page
    expect(page).to have_content "Product Not successfully added!"
  end


end

describe "root page" do
  it "shows root page" do
    visit '/'
    expect(page).to have_content "Products"
  end
end
