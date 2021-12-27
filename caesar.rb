def caesar_cipher(word, num)
    word.downcase
    list = word.bytes
    nest = []
    list.each do |i|
        i = i + num
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