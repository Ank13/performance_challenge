require 'spec_helper'

describe '::page' do
  it 'shows 15th user by karma points on 2nd page' do
    20.times do
      user  = create(:user_with_karma, :total => 500, :points => 2)
    end
    visit '/users/2'
    expect(page).to have_content 'email_14@example.com'
  end
end


  #   it 'returns the 3rd page of users, sorted by karma' do
  #     user_one = double("User")
  #     user_one.stub(:total_karma_points).and_return(200)
  #     user_two = double("User")
  #     user_two.stub(:total_karma_points).and_return(100)

  #   end
      # stub 2 bogus users
      # order them by karma
      # ask for page 2 where each page is 1 users (# of users per page is 
      #  argument somewhere?)
      # ensure that stub 

