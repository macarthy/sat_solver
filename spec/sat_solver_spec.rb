require 'spec_helper'
require_relative '../lib/sat_solver'

describe SatSolver do

  context "solving simple small CNF problems" do 
      it "solves CNF to solver: (a or b) and (not a or b) and (a or not b) " do 
        solver = SatSolver.new
        a = solver.new_var
        b = solver.new_var
     
        solver << [a,b] 
      end 


  end 

end 
