Shoes.app :title => "My Amazing Calculator", :width => 170, :height => 270 do
  stack :margin => 20 do
    @output = edit_line
    
    flow do
      %w(7 8 9 4 5 6 1 2 3 0 + / * -).each do |op|     
      #below this line is |op| 
        button op do         
          append op.to_f!
        end
      end #end op
      
      button "=" do
        eval_expression
      end

      button "C" do
        clear
      end

      button "x^2" do
        square
      end
    
      button "x^y" do
        power
      end

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
    @input = ""
    @output.text = ""

  end
  
  def square
    @output.text = @input.to_i * @input.to_i
  end

  def power
    @output.text = ""
    @output.text = @input.to_i ** input.to_i
  end  
end