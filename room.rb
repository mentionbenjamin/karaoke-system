class Room

  attr_reader(:name, :till_balance, :tracklist, :capacity, :guests_in_room)

  def initialize(name, till_balance, tracklist, capacity)
    @name = name
    @till_balance = till_balance
    @tracklist = tracklist
    @capacity = capacity
    @guests_in_room = []
  end
  # ADD GUEST TO ROOM
  def add_guest_to_room(guest)
    @guests_in_room.push(guest)
  end
  # REMOVE GUEST FROM ROOM
  def remove_guest_from_room(guest)
    @guests_in_room.delete(guest)
  end
  # COUNT NUMBER OF GUESTS IN ROOM ARRAY
  def number_of_guests()
    return @guests_in_room.count()
  end
  # ADD SONG TO TRACKLIST
  def add_song(song)
    @tracklist.push(song)
  end
  # REMOVE SONG FROM TRACKLIST
  def remove_song(song)
    @tracklist.delete(song)
  end
  # ROOM AT CAPACITY YES/NO
  def room_at_capacity?()
    return @guests_in_room >= 5
  end








end
