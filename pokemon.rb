class Pokemon 
attr_accessor :name, :type
  def initialize(name, type)
   @name = name
    @type = type
  end
  def output_pokemon
    puts "#{name} type: #{type}"
  end

end

class Kanto
  def initialize
    @pokemons = []
    @name = %w[Charizard, Blastoise, Venusaur]
    @type = %w[fire, water, grass]
      @name.each do |name|
      @type.each do |type|
        @pokemons <<Pokemon.new(name, type)
      end
    end
  end
  def output
    @pokemons.each do |pokemon|
      pokemon.output_pokemon
    end
end
end

kanto = Kanto.new
kanto.output
