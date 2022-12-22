class ConsoleInterface
  FIGURES =
    Dir[File.join(__dir__, '..', 'data', 'figures', '*.txt')].
      sort.
      map { |file_name| File.read(file_name) }

  def initialize(game)
    @game = game
  end

  def print_out
    puts "Слово: #{word_to_show}".colorize(:light_blue)
    puts figure.colorize(:yellow)
    puts "Ошибки (#{@game.errors_made}): #{errors}".colorize(:red)
    puts "У вас осталось ошибок: #{@game.errors_allowed}"

    if @game.won?
      puts 'Поздравляем, Вы выиграли!'.colorize(:green)
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: #{@game.word}".colorize(:red)
    end
  end

  def figure
    FIGURES[@game.errors_made]
  end

  def word_to_show
    @game.letters_to_guess.map { |letter| letter || '__' }.join(' ')
  end

  def errors
    @game.errors.join(', ')
  end

  def get_input
    print 'Введите следующую букву: '
    $stdin.gets[0].upcase
  end
end
