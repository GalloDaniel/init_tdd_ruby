describe 'Matcher output' do 
  it { expect{ puts "Daniel" }.to output.to_stdout } 
  it { expect{ print "Daniel" }.to output("Daniel").to_stdout } 
  it { expect{ puts "Daniel Gallo" }.to output(/Daniel/).to_stdout } 

  it { expect{ warn "Daniel" }.to output.to_stderr } 
  it { expect{ warn "Daniel" }.to output("Daniel\n").to_stderr } 
  it { expect{ warn "Daniel" }.to output(/Daniel/).to_stderr } 
end