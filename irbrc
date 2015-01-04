# Use Pry everywhere
begin    
  require "rubygems"
  require 'pry'    
  Pry.start
  exit
rescue LoadError  
  p "Can't load pry"
end
