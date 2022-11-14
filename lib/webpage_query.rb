class WebpageQuery
  def initialize(webpage)
    @webpage = webpage
  end

  def visits
    sort_by_visits
  end

  def unique_views
    sort_by_unique_views
  end

  private

  def sort_by_visits
    @webpage.sort_by { |_key, value| value.length }.reverse.map { |key, value| [key, value.length] }
  end

  def sort_by_unique_views
    @webpage.sort_by { |_key, value| value.uniq.length }.reverse.map { |key, value| [key, value.uniq.length] }
  end
end
