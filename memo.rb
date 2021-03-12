class Memo < Post
  def read_from_console
    puts "New note (in order to stop text, please type \"end\" from the new line):"

    @text = []
    line = nil

    until line == "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Created at: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    @text.unshift(time_string)
  end
end