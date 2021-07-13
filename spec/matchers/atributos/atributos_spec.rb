require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   @pessoa.nome = "Sem nome!"
  #   puts "DEPOIS >>>>>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    @pessoa = Pessoa.new

    teste.run # Roda o teste

    @pessoa.nome = "Sem nome!"
    puts "DEPOIS >>>>>>>>> #{@pessoa.inspect}"
  end


  it 'have_attributes' do 
    @pessoa.nome = "Daniel"
    @pessoa.idade = 30

    expect(@pessoa).to have_attributes(nome: starting_with("Dan"), idade: (be >= 30))
  end

  it 'have_attributes' do 
    @pessoa.nome = "Danilo"
    @pessoa.idade = 38

    expect(@pessoa).to have_attributes(nome: starting_with("Dan"), idade: (be >= 30))
  end
end