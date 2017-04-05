require 'pry'
# def deepest_value(nested_hash)
#   current_level = nested_hash
#   until current_level.values.nil?
#     previous_level = current_level
#     current_level = current_level[current_level.keys.first]
#   end
#   current_level
# end

def deepest_value(nested_hash)
  current_level = nested_hash
  until current_level.keys.first.values.class != Hash
    current_level = current_level[current_level.keys.first]
  end
  current_level
end

hash_bonanza = {
  key_1: {
    key_2: {
      key_3_a: {
        key_4: "found me!"
      },
      key_3_b: "not quite"
    }
  }
}

puts deepest_value(hash_bonanza)
