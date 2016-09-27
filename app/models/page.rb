class Page < ApplicationRecord
  has_many :page_contents, dependent: :destroy

  after_create :parse_page

  require 'nokogiri'
  require 'open-uri'

  def parse_page
    doc = Nokogiri::HTML(open(self.page_url))
    doc.css('a').each do |link|
      self.page_contents.create(tag: 'a', content: link.content)
    end

    doc.css('h1').each do |heading|
      self.page_contents.create(tag: 'h1', content: heading.content)
    end

    doc.css('h2').each do |heading|
      self.page_contents.create(tag: 'h2', content: heading.content)
    end

    doc.css('h3').each do |heading|
      self.page_contents.create(tag: 'h3', content: heading.content)
    end 
  end
end
