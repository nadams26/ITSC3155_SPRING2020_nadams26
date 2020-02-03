# RubyHashes
# Part I
def array_2_hash emails, contacts
    x=0
    contacts.each do |key, value|
        if emails[x] != nil
            contacts[key] = emails[x]
        end
        x+=1
    end
    return contacts
end

# Part II
def array2d_2_hash contact_info, contacts
    if(contact_info.length == 0)
        return contacts
    elsif(contact_info.length > 0 and contact_info[0].length == 0)
        return contacts
    else
        bob = {"email" => contact_info[0][0], "phone" => contact_info[0][1]}
        sally = {"email" => contact_info[1][0], "phone" => contact_info[1][1]}
        contacts['Bob Smith'] = bob
        contacts['Sally Field'] = sally
        return contacts
    end
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end