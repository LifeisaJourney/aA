def all_words_capitalized?(arr)
    arr.all? {|el| el.capitalize == el}
end


def no_valid_url?(urls)
    valid_urls = ['.com', '.net', '.io', '.org']
    #Urls is an Array Enumerable that turns it into string class url of every site
    urls.none? do |url|
        #Valid_urls is an Array Enumerable that turns |ending| into string of each endings
        valid_urls.any? {|ending| url.end_with?(ending)}
    end
end


def any_passing_students?(hash)
    #access the key symbol :grades within the hash, then find the average of it
    hash.any? {|el| (el[:grades].sum)/(el[:grades].count * 1.0) >= 75}
end