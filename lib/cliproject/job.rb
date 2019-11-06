class Job
  attr_accessor :title

  @@jobs = []

  def initialize
    @@jobs << self
  end

  def self.jobs
    @@jobs
  end
end
