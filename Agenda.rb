# adicionar editar e remover contatos
# contatos terao as seguintes informaçoes:nome e telefone
# podemos ver todos os contatos registrados ou somente um contato
@agenda = [
    { nome: "Matheus", telefone: "999555" },
    { nome: "Fulano", telefone: "88885555" }
]

def todos_contatos
    puts"----------------------------------------"
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
    end
    puts"----------------------------------------"
end
def adicionar_contatos 
    print"Nome: "
    nome=gets.chomp
    print"Telefone: "
    telefone=gets.chomp

    @agenda<<{nome:nome,telefone:telefone}
    end
    def ver_contato
        print "Qual nome você quer ver: "
        nome = gets.chomp.downcase
        @agenda.each do |contato|
            if contato[:nome].downcase.include?(nome)
                puts "#{contato[:nome]} - #{contato[:telefone]}"
            end
        end
    end
    def editar_contato
        print "Qual nome deseja editar: "
        nome = gets.chomp
    
        @agenda.each do |contato|
            if contato[:nome].downcase == nome.downcase
                print "Se quiser manter o mesmo nome, aperte enter: "
                nome_salvo = contato[:nome]
                novo_nome = gets.chomp
                contato[:nome] = novo_nome.empty? ? nome_salvo : novo_nome
    
                print "Se quiser manter o mesmo telefone, aperte enter: "
                telefone_salvo = contato[:telefone]
                novo_telefone = gets.chomp
                contato[:telefone] = novo_telefone.empty? ? telefone_salvo : novo_telefone
            end
        end
    end
loop do
    puts "1. Contatos\n2. Adicionar Contato\n3. Ver contato\n4. Editar contatos\n5. Remover Contatos\n0. Sair"
    codigo = gets.chomp.to_i

    case 
    when codigo == 0
        puts "Até mais"
        break
    when codigo == 1
        todos_contatos
    when codigo == 2
        adicionar_contatos
    when codigo == 3
        ver_contato
    when codigo == 4
       editar_contato
    when codigo == 5
        # Implemente o código para remover contatos aqui
    else
        puts "Opção inválida"
    end
end