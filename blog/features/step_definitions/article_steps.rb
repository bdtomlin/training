#When 'I create an article titled "$my_artcle"' do |article_title|
#  fill_in
#end

require 'factory_girl/step_definitions'

Given /^I have an article with title "(.*)"$/ do |title|
  Factory.create(:article, :title => title)
end

Given /^I have the following articles$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |article|
    Factory.create(:article, :title => article[:title], :published => article[:published])
  end 
end


