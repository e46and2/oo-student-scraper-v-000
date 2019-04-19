require 'open-uri'
require 'pry'
require 'nokogiri'


class Scraper

  index_url = "./fixtures/student-site/index.html"

  def self.scrape_index_page(index_url)

      website = Nokogiri::HTML(open(index_url))

      student_hash = {}
      students = []

      website.css("div.student-card").each do |student|
        student_hash = {
          :location => student.css("p.student-location").text,
          :name => student.css("h4.student-name").text,
          :profile_url => student.css("a").attribute("href").value,
        }
        students << student_hash
        #binding.pry
      end
      students
  end

  def self.scrape_profile_page(profile_url)

  end

end
