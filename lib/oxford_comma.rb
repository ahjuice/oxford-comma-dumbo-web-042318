def oxford_comma(array)
  if array.count == 1
    array[0]
  elsif array.count == 2
    "#{array[0]} and #{array[1]}"
  else
    combo_string = ""
    array.each_with_index { | string, index |
      if index == 0
        combo_string << string
      elsif index == array.count - 1
        combo_string << ", and #{string}"
      else
        combo_string << ", #{string}"
      end
    }
    return combo_string
  end
end
