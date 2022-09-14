require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe Library do
  before (:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    # @jane_eyre = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"})
    # @villette = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Villette", publication_date: "1853"})
    @jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @professor = charlotte_bronte.write("The Professor", "1857")
    @villette = charlotte_bronte.write("Villette", "1853")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    @dpl = Library.new("Denver Public Library")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@dpl).to be_instance_of Library
    end

    it 'has a name' do
      expect(@dpl.name).to eq("Denver Public Library")
    end

    it 'has no books to start' do
      expect(@dpl.books).to eq([])
    end

    it 'has no authors to start' do
      expect(@dpl.authors).to eq([])
    end
  end

  describe '#add_author' do
    it 'will add authors to the array' do
      @dpl.add_author(@charlotte_bronte)
      expect(@dpl.authors).to eq([@charlotte_bronte])
      
      @dpl.add_author(@harper_lee)
      expect(@dpl.authors).to eq([@charlotte_bronte, @harper_lee])
      expect(@dpl.books).to eq([@jane_eyre, @professor, @villette, @mockingbird])
    end
  end

  describe '#publication_time_frame_for' do
    it 'shows the start and end dates for books from the author given' do
      expect(@dpl.publication_time_frame_for(@charlotte_bronte)).to eq({:start=>"1847", :end=>"1857"})
      expect(@dpl.publication_time_frame_for(@harper_lee)).to eq({:start=>"1960", :end=>"1960"})
    end
  end
end