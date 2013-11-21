Given /^the following articles exist:$/ do |table|
  table.hashes.each do |article|
    Article.create! article
  end
  assert Article.find_by_title("Article_1").nil? == false
  assert Article.find_by_title("Article_2").nil? == false
end