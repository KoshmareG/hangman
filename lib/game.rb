class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.upcase.chars
    @user_guesses = []
  end

  def errors
    @user_guesses - @letters - normalized_letters
  end

  def errors_made
    errors.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
    @letters.map { |letter| letter if @user_guesses.include?(normalize_letters(letter)) }
  end

  def normalize_letters(letter)
    case letter
    when 'Ё' then 'Е'
    when 'Й' then 'И'
    else letter
    end
  end

  def normalized_letters
    @letters.map { |letter| normalize_letters(letter) }
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    if !over? && !@user_guesses.include?(normalize_letters(letter))
      @user_guesses << letter
    end
  end

  def word
    @letters.join
  end

  def won?
    (normalized_letters - @user_guesses).empty?
  end

  def lost?
    errors_allowed == 0
  end
end
