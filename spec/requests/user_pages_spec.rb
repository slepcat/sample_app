require 'spec_helper'

describe "User Pages" do
	subject { page }

	describe "profile page" do
		let(:user) { FactoryGirl.create(:user) }
		before { visit user_path(user) }

		it { should have_content(user.nema) }
		it { should have_title(user.nema)}
	end

	describe "signup page" do
	    before { visit signup_path }
    	it { should have_content('Sign up') }
    	it { should have_title(full_title('Sign up')) }
    end
end
