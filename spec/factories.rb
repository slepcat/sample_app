FactoryGirl.define do
	factory :user do
		nema     "Michael Hartl"
		email    "michael@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end