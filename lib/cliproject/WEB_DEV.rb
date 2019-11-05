class WEB_DEV::Job
  attr_accessor :title, :date, :location

  def self.today
    #scrape craiglist for jobs then return posted listings
    self.scrape_jobs
  end

  def self.scrape_jobs
    jobs = []

    jobs << self.scrape_craigslist

    jobs
  end

  
