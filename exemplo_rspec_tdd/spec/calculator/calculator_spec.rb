#motivacao tdd: exemplificar como o codigo pode ser usado
#tem que ser lido como um texto limpo
#escrevemos o teste
    #oq esperamos do teste
#escrevemos o codigo
#o codigo passa
#refatora o codigo
require 'calculator'

#descrevendo que teste quero criar nesse momento
describe Calculator, 'sobre a calculadora' do  
  #Context: poderia ser tambem esta a baixo -> #metodo de instancia ou .metodo de classe 
  #context '#sum' do
  context 'use sum method for 2 numbers' do
    #it ou specify da no mesmo
    it 'positive numbers' do
        #xUnit: setup, prepara o ambiente
          #subject: oq ele faz eh basicamente chamar esse objeto, sem precisar cria-lo
            #calc = Calculator.new
            #result = calc.sum(5, 7)
            #subject implicito:
              #bota a baixo do describe:
                #subject(:nome) { described_class.new() } 
        #xUnit: exercise, quando interagimos com o amb que preparamos 
        result = subject.sum(5, 7)
        #xUnit: verify, verificamos oq estamos testando.
        expect(result).to eq(12)
        #xUnit: Teardown, o rspec que faz pra gente, limpa tudo apos o teste,
            #e se rodarmos novamente o banco de dados vai ta limpinho.
    end

    it 'negative numbers' do
        result = subject.sum(-5, 7)
        expect(result).to eq(2)
    end
  end
end
