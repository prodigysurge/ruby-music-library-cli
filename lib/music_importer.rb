



class MusicImporter

    attr_reader :path

    def initialize(path)
        @path = path
    end


    def files
        @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
    end

    def import 
        files.each do |j|
            Song.create_from_filename(j)
        end
    end




end
