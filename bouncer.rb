class Bouncer
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def bounce(guest)
    if guest.fav_song == "Wonderwall"
      p "Nae Wonderwall. Up eh road."
    else
      p "In ye go, have a good night."
    end
  end

end
