Given /^I am on the blog homepage$/ do visit("/posts")
end
When /^I click "New Post" link$/ do click_on "New Post"
end
When /^I fill "(.*?)" as Title$/ do |title|
@title = title
fill_in "Title", :with => title
end
When /^I fill "(.*?)" as content$/ do |content| fill_in "Content", :with => content
end
When /^I click "(.*?)" button$/ do |btn| click_button btn
end
Then /^I should see the blog I just posted$/ do #page.should have_content(@title)
end

Given /^4 post exist$/ do
end
When /^I am on the blog homepage$/ do visit("/posts")
end
Then /^I can see list of 4 posted blogs$/ do #page should have 4 posts
end

Given /^there is a post titled with "Dummy post" and content with "Dummy content" do 