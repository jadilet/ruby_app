require 'webpage_query'

describe WebpageQuery do
  let(:webpage) do
    { '/help_page/1' => ['126.318.035.038', '124.318.035.036', '126.318.035.037'],
      '/index' => ['802.683.925.780', '316.433.849.805', '802.683.925.780', '316.433.849.805'] }
  end

  let(:webpage_query_visit_views) do
    [['/index', 4], ['/help_page/1', 3]]
  end

  let(:webpage_query_unique_views) do
    [['/help_page/1', 3], ['/index', 2]]
  end

  let(:webpage_query) { described_class.new(webpage) }

  context '#visits' do
    it 'returns a hash' do
      expect(webpage_query.visits).to eq webpage_query_visit_views
    end
  end

  context '#unique_views' do
    it 'returns a hash' do
      expect(webpage_query.unique_views).to eq webpage_query_unique_views
    end
  end
end
