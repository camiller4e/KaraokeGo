class Bar
  attr_accessor :name, :rooms, :till, :entryfee

  def initialize(name, rooms, till, entryfee)
    @name = name
    @rooms = []
    @till = till
    @entryfee = 5
  end

  def check_in_guest(guest, room, bouncer)
    bouncer.bounce(guest)
    if room.capacity > room.guests.count
      room.add_guest_to_room(guest)
      guest.wallet -= @entryfee
      @till += @entryfee
      room.capacity += 1
    end
    return "Sorry, this room is full!"
  end
  
  def check_out_guest(guest, room)
    room.remove_guest_from_room(guest)
    p "Thanks for coming!"
  end

  def guest_cheers(room, song)
    if room.songbook.include?(song)
      p "Woo! That's my favourite song!"
    end
  end


end
