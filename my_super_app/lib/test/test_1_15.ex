defmodule Tests.Test1_15 do

  def checking(word1, word2) do
    changed1 = word1
    |> String.downcase()
    |> String.split()
    |> Enum.sort

    changed2 = word2
    |> String.downcase()
    |> String.split()
    |> Enum.sort

    if (changed1 == changed2) do
      true

    else false
    end
  end

  def divisors(n) do
    arr = 1..n
    filteredArr = Enum.filter(arr, fn numb -> rem(n,numb) == 0 end)
    if(Enum.count(filteredArr) > 2) do
      filteredArr
    else "#{n} is prime"
    end
  end

  def task3(num1, num2, num3) do

    str1 = Integer.to_string(num1, 16)
    str2 = Integer.to_string(num2, 16)
    str3 = Integer.to_string(num3, 16)

    "#{str1}#{str2}#{str3}"
  end
end
# task 1
# An anagram is the result of rearranging the letters of a word
# to produce a new word (see wikipedia).

# Note: anagrams are case insensitive

# Complete the function to return true if the two arguments given
# are anagrams of each other;
# return false otherwise.

# ## Params

#   - a, b: strings

# ## Examples

#   iex(1)> anagram?("foefet", "toffee") === true
#   iex(2)> anagram?("dumble", "bumble") === false
#   iex(3)> anagram?("Buckethead", "DeathCubeK") === true
