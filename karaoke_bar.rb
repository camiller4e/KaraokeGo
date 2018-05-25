class Bar
  attr_accessor :name, :rooms, :till

  def initialize(name, rooms, till)
    @name = name
    @rooms = []
    @till = till
    @entryfee = 5
  end

  def check_in_guest(guest, room)
    room.add_guest_to_room(guest)
    guest.wallet -= @entryfee
    @till += @entryfee

  end


end
