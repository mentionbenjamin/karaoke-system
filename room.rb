class Room

  attr_reader(:name, :till_balance, :tracklist, :guests_in_room)

  def initialize(name, till_balance, tracklist)
    @name = name
    @till_balance = till_balance
    @tracklist = tracklist
    @guests_in_room = []
  end

  def add_guest_to_room(guest)
    @guests_in_room.push(guest)
  end

  def number_of_guests()
    return @guests_in_room.count()
  end

  def add_song(song)
    @tracklist.push(song)
  end

  def remove_song(song)
    @tracklist.delete(song)
  end









end
