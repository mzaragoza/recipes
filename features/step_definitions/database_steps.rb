Then /^there should be (\d+) (?:"([^"]*)" )?(.*)s?$/ do |count,bool,model| if bool
   Object.const_get(model.classify).where(bool.to_sym => true).count.should == count.to_i
  else
   Object.const_get(model.classify).all.count.should == count.to_i
  end
  instance_variable_set("@#{model}", Object.const_get(model.classify).first) if count.to_i == 1
end
