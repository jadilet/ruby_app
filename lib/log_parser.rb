class LogParser
  def initialize(file)
    @file = file
    @hm = {}
  end

  def read
    File.read(@file).each_line do |line|
      url = line.split[0]
      ip = line.split[1]
      @hm[url] = [] unless hm.key?(url)
      @hm[url] << ip
    end
    hm
  end

  private

  attr_reader :hm, :file
end
