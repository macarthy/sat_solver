require 'spec_helper'
require_relative '../lib/sat_solver'

describe SatSolver do

  context "solving simple small CNF problems" do 
      it "solves CNF to solver: (a or b) and (not a or b) and (a or not b) " do 
        solver = SatSolver.new
        a = solver.new_var
        b = solver.new_var
     
        solver << [a,b] 
        solver << [-a,b] 
        solver << [a,-b]

        result = solver.solve
        expect(result).to be_kind_of(Object)
        expect(result).to respond_to(:satisfied?)

        expect(result.satisfied?).to be_instance_of(TrueClass)
    end 


  end 

end 
