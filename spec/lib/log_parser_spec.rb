require 'log_parser'

describe LogParser do
  let(:log_file) { 'spec/fixtures/webserver.log' }
  let(:log_parser) { described_class.new(log_file) }
  let(:hm) { { '/help_page/1' => ['126.318.035.038'] } }

  context '#read' do
    it 'returns a hash' do
      expect(log_parser.read).to eq hm
    end
  end
end
