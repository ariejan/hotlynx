class Link < ActiveRecord::Base
  attr_accessible :category, :description, :title, :url, :votes
end
