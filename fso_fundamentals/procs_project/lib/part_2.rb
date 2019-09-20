def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  new_words = []
  splitter = str.split(' ')
  splitter.each do |el|
    new_words << prc.call(el)
  end
new_words.join(' ')
end

def greater_proc_value(int, proc_1, proc_2)
  result_1 = proc_1.call(int)
  result_2 = proc_2.call(int)
  if result_1 > result_2
    return result_1
  else
    return result_2
  end
end

def and_selector(arr, proc_1, proc_2 )
  new_arr = []

  arr.each do |el|
    if proc_1.call(el) && proc_2.call(el)
      new_arr << el
    end
  end
  new_arr
end

def alternating_mapper(arr, prc_1, prc_2)
  new_arr = []
  arr.each_with_index do |k, i|
    if i == 0 
      new_arr << prc_1.call(k)
    elsif i % 2 == 0 
      new_arr << prc_1.call(k)
    elsif i % 2 == 1
      new_arr << prc_2.call(k)
    end
  end
  new_arr
end