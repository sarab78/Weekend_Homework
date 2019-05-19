class Rooms

  attr_accessor :rooms, :songs, :max_guests

  def initialize(rooms, songs, max_guests)
    @rooms = rooms
    @songs = songs
    @max_guests = max_guests
    @guests_in_room = []

  end



    def max_guests_count
        @guests_max_guests.count
      end

      def check_in_guests_to_room(guest)
      @guests_in_room.push(guest)
    end

def add_song_to_room(song)
  @songs.push(song)
end

def check_out_guest_from_room(guest)
    @guests_in_room.delete(guest)
  end

def max_guest_limit_in_room
  if @guests_in_room.count <= max_guests
        return "Sorry,No Space"
      end
    end
end
