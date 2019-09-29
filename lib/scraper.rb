require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
  def get_page
<<<<<<< HEAD
    Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end 
  
  def get_courses
    self.get_page.css(".post")
  end 
  
  def make_courses
    self.get_courses.each do |post|
      course = Course.new
      course.title = post.css("h2").text
      course.schedule = post.css(".date").text
      course.description = post.css("p").text
    end 
=======
    #site = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    binding.pry
  end 
  
  def get_courses
    # courses = get_page.css(".post")
    # binding.pry 
    
    # doc.css(".post").first.css("h2").text - for getting course title 
    # doc.css(".post").first.css("date").text
  end 
  
  def make_courses
    
>>>>>>> 4b053d3d781c9ce39deb1d256115f2433d004ea7
  end 
  
end

Scraper.new.print_courses



