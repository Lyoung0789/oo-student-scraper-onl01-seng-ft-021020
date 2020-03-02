require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper
  
  
  
  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    @all = []
    # doc.css("div.student-card")
    
    doc.css("div.student-card").each do |index|
      student = {}
      student[:name] = index.css("h4.student-name").text
      student[:location] = index.css("p.student-location").text
      student[:profile_url] = index.css("a").attribute("href").value
      @all << student
      # binding.pry
    end 
    @all
    # binding.pry
  end

  def self.scrape_profile_page(profile_url)
    student_profile={}
    html = open(profile_url)
    doc = Nokogiri::HTML(html)
    # social = doc.css("div.vitals-container .social-icon-container a")
    # social.each do |index|
    # # doc.css("div.main-wrapper.profile div.vitals-container .social-icon-container a").each do |social|
    #   if index.attribute("href").value.include?("twitter")
    #     links[:twitter] = index.attribute("href").value
      
      
    #   elsif index.attribute("href").value.include?("linkedin")
    #     links[:linkedin] = index.attribute("href").value
      
      
    #   elsif index.attribute("href").value.include?("github")
    #     links[:github] = index.attribute("href").value
      
      
    #   else index.attribute("href").value.include?("blog")
    #     links[:blog] = index.attribute("href").value
        
    #   end 
      
    
    #   # links[:github] = 
    #   # links[]
    #   binding.pry
  
    # end 
    
    
    
    # binding.pry
    doc.css("div.vitals-container .social-icon-container a").each do |social|
      if social.attribute("href").value.include?("twitter")
        student_profile[:twitter] = social.attribute("href").value
      elsif social.attribute("href").value.include?("linkedin")
        student_profile[:linkedin] = social.attribute("href").value
      elsif social.attribute("href").value.include?("github")
        student_profile[:github] = social.attribute("href").value
      else
        student_profile[:blog] = social.attribute("href").value
      end
      binding.pry 
    end
    binding.pry
    
  end



end

