class Hello < ActiveRecord::Base
  attr_accessible :color, :from, :message
  validates :color, :format => { :with => /^#[0-9A-Fa-f]{6}$/,  :message => "Only HTML-Color codes allowed!" }
end
