$endprogram = 0
until $endprogram == 1 do

  puts "What would you like to do? \n\n    1. Start\n    2. Stop\n    3. Show Times\n    4. Manual Input\n    5. Exit"
  choice = gets.chomp.downcase

  def which_action(choice)
    case choice
    when "start", "1"
        return start()
    when "stop", "2"
        return stop()
    when "show times", "3"
        return times()
    when "manual input", "4"
        return manual()
    when "exit", "5"
        $endprogram += 1
    else
        puts "Not a valid option."
        run_program()
    end
  end
#start starts the timer going.
  def start()
    puts "Timer Started.\n "
    $starting = Time.now
  end
#stop will stop the timer then ask user for language before printing to the relevant .txt file.
  def stop()
    puts "Timer Stopped.\n "
    ending = Time.now
    elapsed_time = ending - $starting
    elapsed_time_minutes = elapsed_time.to_i / 60
    puts "Time spent programming: #{elapsed_time_minutes}.\n "

    puts "Which language were you coding with?\n "
    which_language = gets.chomp.downcase
    case which_language
    when "ruby"
        whole_file = File.open('ruby.txt').to_a
        last_time = whole_file.last()
        cumulative_time = last_time.to_f + elapsed_time
        File.open('ruby.txt', 'a') do |file|
            file.write("\n" + cumulative_time.to_s) end
    when "html"
        whole_file = File.open('html.txt').to_a
        last_time = whole_file.last()
        cumulative_time = last_time.to_f + elapsed_time
        File.open('html.txt', 'a') do |file|
            file.write("\n" + cumulative_time.to_s) end
    when "css"
        whole_file = File.open('css.txt').to_a
        last_time = whole_file.last()
        cumulative_time = last_time.to_f + elapsed_time
        File.open('css.txt', 'a') do |file|
            file.write("\n" + cumulative_time.to_s) end
    when "javascript", "js"
        whole_file = File.open('javascript.txt').to_a
        last_time = whole_file.last()
        cumulative_time = last_time.to_f + elapsed_time
        File.open('javascript.txt', 'a') do |file|
            file.write("\n" + cumulative_time.to_s) end
    when "test"
        whole_file = File.open('test.txt').to_a
        last_time = whole_file.last()
        cumulative_time = last_time.to_f + elapsed_time
        File.open('test.txt', 'a') do |file|
            file.write("\n" + cumulative_time.to_s) end
        else
            puts "\n*****Not a recognised language, try again.*****\n"
            stop()
    end
  end

  def times()
    ruby_whole_file = File.open('ruby.txt').to_a
    ruby_last_time = ruby_whole_file.last()
    ruby_minutes = ruby_last_time.to_f / 60
    ruby_hours = ruby_minutes.to_f / 60
    html_whole_file = File.open('html.txt').to_a
    html_last_time = html_whole_file.last()
    html_minutes = html_last_time.to_f / 60
    html_hours = html_minutes.to_f / 60
    css_whole_file = File.open('css.txt').to_a
    css_last_time = css_whole_file.last()
    css_minutes = css_last_time.to_f / 60
    css_hours = css_minutes.to_f / 60
    javascript_whole_file = File.open('javascript.txt').to_a
    javascript_last_time = javascript_whole_file.last()
    javascript_minutes = javascript_last_time.to_f / 60
    javascript_hours = javascript_minutes.to_f / 60
    puts "--------------------\n
    Ruby:       #{ruby_hours.to_i} hours | #{ruby_minutes.to_i} minutes | #{ruby_last_time.to_i} seconds \n
    HTML:       #{html_hours.to_i} hours | #{html_minutes.to_i} minutes | #{html_last_time.to_i} seconds \n
    CSS:        #{css_hours.to_i} hours | #{css_minutes.to_i} minutes | #{css_last_time.to_i} seconds \n
    JavaScript: #{javascript_hours.to_i} hours | #{javascript_minutes.to_i} minutes | #{javascript_last_time.to_i} seconds\n--------------------"
  end

  def manual()
    puts "Which language would you like to enter a time for?"
    manual_input = gets.chomp.downcase
    case manual_input
    when "ruby"
        puts "How many minutes of Ruby coding would you like to add?"
        how_long_ruby_min = gets.chomp.to_f
        how_long_ruby_sec = how_long_ruby_min * 60
        whole_file = File.open('ruby.txt').to_a
        last_time = whole_file.last()
        ruby_time = last_time.to_f + how_long_ruby_sec
        File.open('ruby.txt', 'a') do |file|
            file.write("\n" + ruby_time.to_s) end
    when "html"
        puts "How many minutes of HTML coding would you like to add?"
        how_long_html_min = gets.chomp.to_f
        how_long_html_sec = how_long_html_min * 60
        whole_file = File.open('html.txt').to_a
        last_time = whole_file.last()
        html_time = last_time.to_f + how_long_html_sec
        File.open('html.txt', 'a') do |file|
            file.write("\n" + html_time.to_s) end
    when "css"
        puts "How many minutes of CSS coding would you like to add?"
        how_long_css_min = gets.chomp.to_f
        how_long_css_sec = how_long_css_min * 60
        whole_file = File.open('css.txt').to_a
        last_time = whole_file.last()
        css_time = last_time.to_f + how_long_css_sec
        File.open('css.txt', 'a') do |file|
            file.write("\n" + css_time.to_s) end
    when "javascript" || "js"
        puts "How many minutes of JavaScript coding would you like to add?"
        how_long_javascript_min = gets.chomp.to_f
        how_long_javascript_sec = how_long_javascript_min * 60
        whole_file = File.open('javascript.txt').to_a
        last_time = whole_file.last()
        javascript_time = last_time.to_f + how_long_javascript_sec
        File.open('javascript.txt', 'a') do |file|
            file.write("\n" + javascript_time.to_s) end
          when "test"
              puts "How many minutes of Test coding would you like to add?"
              how_long_test_min = gets.chomp.to_f
              how_long_test_sec = how_long_test_min * 60
              whole_file = File.open('test.txt').to_a
              last_time = whole_file.last()
              test_time = last_time.to_f + how_long_test_sec
              File.open('test.txt', 'a') do |file|
                  file.write("\n" + test_time.to_s) end
    end
    end
  which_action(choice)
  end


#Optional Extras: Add feature to block out 1. Add after it is pressed to stop it being pressed again before stopping.
