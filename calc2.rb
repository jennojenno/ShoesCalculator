Shoes.app :title => "My Amazing Calculator", :width => 170, :height => 240 do
  stack :margin => 20 do
    @output = edit_line
    
    flow do
      %w(0 1 2 3 4 5 6 7 8 9 + / * -).each do |op|     
      #below this line is |op| 
        button op do         
          append op
        end
      end #end op
      
      button "=" do
        eval_expression
      end

      button "C" do
        puts ""
    end
    
  end
  

  # Stick a string on the end of our input
  #
  def append(s)
    if @input.nil?
      @input = ""
    end
    @input += s
    @output.text = @input
  end
  
  # Evaluate the input we've got so far
  #
  def eval_expression
    @input = eval(@input).to_s
    @output.text = @input
  end

  def clear
    @output.text = ""
  end

  
end