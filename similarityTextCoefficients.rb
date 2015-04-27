require "set"

class SimilarityTextCoefficients

  def self.dice_coefficient(a, b)

    vectorOne  =  Array.new
    vectorTwo =  Array.new

    vectorOne=a.split(" ")

    vectorTwo=b.split(" ")
    newdice = 0

    for x in 0..  vectorTwo.length-1

      for y in 0..  vectorOne.length-1

        a_bigrams = vectorOne[y].each_char.each_cons(2).to_set
        b_bigrams = vectorTwo[x].each_char.each_cons(2).to_set

        overlap = (a_bigrams & b_bigrams).size

        total = a_bigrams.size + b_bigrams.size
        dice  = overlap * 2.0 / total

        if newdice == 0

          newdice=dice

        end

        if newdice < dice

          newdice=dice

        end

      end

    end

    newdice

  end


  #Index of Jaccard =intersection/ ((numberA+numberB) -intersection )
  #where
  #numberA - number of elements in set А
  #numberB- number of elements in set B
  #intersection - number of elements in intersecting set

  def self.createJaccardIndex(a,b)

    vectorOne  =  Array.new
    vectorTwo =  Array.new
    intersection=0

    contvector=0

    # We get number of itens for each group and put in them in a array One and Two

    vectorOne=a.split(" ")

    vectorTwo=b.split(" ")

    if    vectorOne.length < vectorTwo.length

      numberA= vectorOne.length
      numberB= vectorTwo.length

    else
      numberB= vectorOne.length
      numberA= vectorTwo.length
    end

    numberA= vectorOne.length
    numberB= vectorTwo.length

    # We compare each iten inside of each array to obtain: number of elements in intersecting set

    for x in 0..  vectorTwo.length-1

      if ((vectorOne).include?(vectorTwo[x]) == true)
        intersection+=1
      end


    end

    indexJaccard= intersection.to_f/ ((numberA+numberB) -intersection )
    return indexJaccard

  end


end