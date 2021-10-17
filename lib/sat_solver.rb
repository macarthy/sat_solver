class SatSolver
    def initialize()
      @tokens =[]
      @var_map ={}
      @counter = 1
    end


    def solve 
      Object.new
    end 

    def <<(token)
      @tokens << token
      self
    end 

    def new_var
      name = new_var_name
      bnf = BNF.new(name)
      @var_map[name.to_sym] = bnf
      bnf
    end

    def new_var_name
      @counter += 1
      "var_#{@counter}"
    end

  class BNF
    def initialize(name)
      @name 
      @state = true
    end

    def -@
      @state = false
    end 


  end 
    
end
