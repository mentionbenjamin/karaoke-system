class Room

  attr_reader(:name, :tracklist, :guests_in_room)

  def initialize(name, tracklist)
    @name = name
    @tracklist = tracklist
    @guests_in_room = []
  end

  # def add_guest_to_room(guest)
  #   @guests_in_room.push(guest)
  # end
  # #
  # # def number_of_guests()
  # #   return @guests_in_room.count()
  # # end












end
