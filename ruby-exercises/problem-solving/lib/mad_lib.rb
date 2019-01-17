class Madlib
  attr_reader :noun_var, :verb_var, :adjective_var, :adverb_var

  def noun(string)
    @noun_var = string
  end

  def verb(string)
    @verb_var = string
  end

  def adjective(string)
    @adjective_var = string
  end

  def adverb(string)
    @adverb_var = string
  end

  def result
    return "Do you #{@verb_var} your #{@adjective_var} #{@noun_var} #{@adverb_var}? That's hilarious!"
  end

end
