require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  @@all = []
  attr_accessor :name, :location, :profile
  
  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    # binding.pry
    self.get_pages.css(".post")
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

