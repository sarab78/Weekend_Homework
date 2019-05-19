require('minitest/autorun')
require('minitest/rg')
require_relative('songs')

class TestSong < Minitest::Test

def setup()

  @song1 = Song.new( "Idina Menzel", "Let it Go")
  @song2 = Song.new("Anna Kendrick", "True colors")
  @song3 = Song.new( "Anna Kendrick", "Get up again")
  @song4 = Song.new("Kidzup", "Rock-A-Bye Baby")

end

def test_artist_name
  assert_equal("Idina Menzel", @song1.artist)

end


def test_song_name
  assert_equal("True colors", @song2.song)

end

end
