class ConsoleInterface
  FIGURES =
      Dir[__dir__ + '/../data/figures/*.txt'].
      sort.
      map { |file_name| File.read(file_name) }

  def initialize(game)
    @game = game
  end

  def print_out
    puts "#{"Слово:".colorize(:blue)} #{word_to_show}"
    puts "#{figure}"
    print "Ошибки: (#{@game.errors_made})".colorize(:yellow)  
    print " #{errors_to_show}\n".colorize(:red)
    print "У вас осталось ошибок:".colorize(:yellow)
    print" #{@game.errors_allowed}\n".colorize(:red)
    if @game.won?
      puts "Поздравляем, вы выиграли!".colorize(:green)
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: #{@game.word}".colorize(:red)
    end
  end

  def figure
    return FIGURES[@game.errors_made].colorize(:red)
  end

  def word_to_show
    result =
      @game.letters_to_guess.map do |letter|
        if letter == nil
          "__".colorize(:blue)
        else
          letter.colorize(:green)
        end
      end

    return result.join(' ')
  end

  def errors_to_show
    return @game.errors.join(', ')
  end

  def get_input
    print "Введите следующую букву: ".colorize(:blue)
    puts
    letter = gets[0].upcase
    return letter
  end
end
