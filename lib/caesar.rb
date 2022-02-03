class Ceasar_c

    def initialize(word, num)
        @word = word
        @num = num
    end

    def caesar_cipher?(w = @word, n = @num)
        w.downcase
        list = w.bytes
        nest = []
        list.each do |i|
            i = i + n
            if i > 122
                j = 0
                while i > 122
                    j + 1
                    i -1 
                end
                i = 96 + j
            end
            nest.push(i)
        end
        st = nest.pack('C*').force_encoding('UTF-8')
        return st
    end
end