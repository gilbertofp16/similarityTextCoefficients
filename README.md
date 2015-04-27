# similarityTextCoefficients
For text comparations it implements Dice's coefficient and Jaccard's or Tanimoto index

# Usage

Enter two strings and it compares their similarity and gives a score between 0 and 1, when 1 is the similarity

Example:

require 'similarityTextCoefficients'

puts(SimilarityTextCoefficients.createJaccardIndex("something half","something"))

>> Result : 0.5

puts(SimilarityTextCoefficients.dice_coefficient("something half","something"))

>> Result : 1.0



# Notes

Jaccard's coefficient give the exact amount of intersections per text, and obtain an
index between 1 and 0 to know if text A and text B are similar or different, but we
perceive problems, Jaccard’s coefficient is using the size of each text, but if a text result
is long in words, this one is on disadvantage, even if the intersections are many, always
a short text with less intersections will win and obtain better index, I recommend to use both coefficients 
to obtain a good conclusion for evaluate text similarity. 


# License
MIT
