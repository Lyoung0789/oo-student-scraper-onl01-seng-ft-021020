require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  @@all = []
  attr_accessor :name, :location, :profile
  
  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    
    # doc.css("div.student-card")
    
    doc.css("div.student-card").each do |index|
      binding.pry
      student = {}
      student.name = index.css("h4.student-name").text
      student.location = index.css()
      binding.pry 
    end 
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

