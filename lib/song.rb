class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end 

    def self.count
        @@count
    end 
    def self.artists
        @@artists.uniq
    end 
    
    def self.genres
        @@genres.uniq
    end 

    def self.genre_count 
        type = {}
        @@genres.each do |genre|
            if type[genre]
                type[genre] += 1
            else
                type[genre] = 1
              end
            end
         type
    end 

    def self.artist_count
        type = {}
        @@artists.each do |artist|
            if type[artist]
                type[artist] += 1
            else
                type[artist] = 1
            end 
        end
        type
    end
end 