class CCStudent

def initialize(input_name, input_cohort, input_words)
  @name = input_name
  @cohort = input_cohort
  @words = input_words
  # @fav_language = ""
end

 def get_name
   return @name
 end

  def get_cohort
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def student_talk
    return @words
  end

  def fav_language(language)
    return "I love #{language}"
  end


end
