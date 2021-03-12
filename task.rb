require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "What's your task?"
    @text = STDIN.gets.chomp

    puts "What is tasks' deadline? Please type date (DD.MM.YYYY)"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created at: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Deadline: #{@due_date}"

    [deadline, @text, time_string]
  end
end