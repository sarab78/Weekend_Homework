require('minitest/autorun')
require('minitest/rg')
require_relative('rooms')
require_relative('guest')
require_relative('songs')

class RoomsTest < Minitest::Test

  def setup()
    @guest1 = Guest.new("Rachel")
    @guest2 = Guest.new("Monica")
    @guest3 = Guest.new("Chandler")
    @guest4 = Guest.new("joey")
    @guest5 = Guest.new("Ross")



    @song1 = Song.new("Idina Menzel", "Let it Go")
    @song2 = Song.new("Anna Kendrick", "True colors")
    @song3 = Song.new("Anna Kendrick", "Get up again")
    @song4 = Song.new("Kidzup", "Rock-A-Bye Baby")

    @room1 = Rooms.new("room1", [@song1, @song2, @song3, @song4], 2)
    @room2 = Rooms.new("room2", [@song1, @song2, @song3, @song4], 2)
    @room3 = Rooms.new("room3", [@song1, @song2, @song3, @song4], 2)

  end

  def test_max_guests()
      assert_equal(2, @room1.max_guests)
    end

    def test_check_in_guests_to_room
      @room1.check_in_guests_to_room(@guest1)
      @room1.check_in_guests_to_room(@guest2)
      assert_equal(2, @room1.max_guests)
    end

    def test_songs_in_room
        assert_equal([@song1, @song2, @song3], @room2.song)
      end

    def test_add_song_to_room
    @room1.add_song_to_room(@song1)
    assert_equal(5, @room1.songs.count)
  end

def test_check_out_guest_from_room
  @room1.check_out_guest_from_room(@guest2)
    assert_equal(2, @room1.max_guests)
  end

  def test_max_guest_limit_in_room
    @room2.check_in_guests_to_room(@guest3)
    @room2.check_in_guests_to_room(@guest4)
    @room2.check_in_guests_to_room(@guest5)
    assert_equal("Sorry,No Space  ", @room2.max_guest_limit_in_room)
  end
  end
