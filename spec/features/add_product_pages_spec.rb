require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Milk'
    fill_in 'QCost', :with => 4
    fill_in 'Country of origin', :with => 'usa'
    click_on 'Create Product'
    save_and_open_page
    expect(page).to have_content 'Product successfully added!'
    expect(page).to have_content 'Milk'
  end
end
