# OOP Ruby
class Siswa
    # Init methods
    def initialize(umur)
        @umur = umur 
    end

    def getUmur
        return @umur
    end
    def setUmur(umur)
        @umur = umur
    end

    protected :getUmur
end

class Laki < Siswa
    def umur
        getUmur()        
    end

    def status
        if getUmur.to_i > 10
            return "Anda tua"
        else
            return "Anda masih muda 'Kayaknya..'"
        end
    end
end

# make obj
siswa = Laki.new(21)
puts "Umur anda: #{siswa.umur()}"
puts siswa.status()

siswa.setUmur(9)
puts "Umur anda skrng: #{siswa.umur()}"
puts siswa.status()