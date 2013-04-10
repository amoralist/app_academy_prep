class Dungeon
  attr_accessor :player
  
  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end
 
# Method for mod to add rooms.
   def add_room(reference, name, description, connections)
    @rooms << Room.new(reference, name, description, connections)
   end
# Methods to load a player into dungeon and output environment description.
   def start(location)
     @player.location = location
     show_current_description
   end

   def show_current_description
     puts find_room_in_dungeon(@player.location).fulldescription
   end

   def find_room_in_dungeon(reference)
     @rooms.detect{|room| room.reference == reference}
   end

   def find_room_in_direction(direction)
     find_room_in_dungeon(@player.location).connections[direction]
   end

   def go(direction)
     puts "You go " + direction.to_s
     @player.location = find_room_in_direction(direction)
     show_current_description
   end
 
    # These classes were in "Struct" form.  Can be written later in longhand
    # if more functionality required than simple data storage. 
    # (as Room has now been)
  
  #Player = Struct.new(:name, :location)
  #Room = Struct.new(:reference, :name, :description, :connections)
  class Player
    attr_accessor :name, :location
    
    def initialize(name)
      @name = name
    end
  end
  
  class Room
    attr_accessor :reference, :name, :description, :connections
    
    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end
        
    def fulldescription
      @name + "\n\nYou are in " + @description
    end
  end
end


# This is outer environment code to initialize a particular dungeon instance.
my_dungeon = Dungeon.new("amoralist")

# Code to add each room of the dungeon.
my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave",
  {:west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave",
  {:east => :largecave})

# Start the dungeon by placing the player in the large cave.
my_dungeon.start(:largecave)
my_dungeon.go(:west)