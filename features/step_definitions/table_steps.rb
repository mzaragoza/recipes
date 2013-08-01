Then /^I should see a table containing the following:$/ do |table|
  table.raw.each do |row|
    expected_mark = row.first
    page.should have_content(expected_mark)
  end
end
