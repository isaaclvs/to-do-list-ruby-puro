# Requerendo as funções que estão em outro arquivo
require "./functions.rb"

# Criando array que irá receber as tarefas
lista_de_tarefas = ["Fazer comida", "Comer", "Dormir"]

# Declarando a primeira resposta para iniciar o loop
resposta = 1

until resposta == 5 do
    menu_principal()

    # Recebendo a alternativa do usuário
    resposta = gets.chomp.to_i

    if resposta == 1 or resposta == 2 or resposta == 3 or resposta == 4
        limpar_tela()

        # Criar nova tarefa
        if resposta == 1
            lista_de_tarefas.push(criar_tarefas())
            confirmar("criada")

        # Visualizar tarefas
        elsif resposta == 2
            visualizar_tarefas(lista_de_tarefas)
            puts ""
            print "Tecle ENTER para voltar ao menu principal"
            gets
            limpar_tela()

        # Editar tarefas
        elsif resposta == 3

            # Mostrar ao usuário as tarefas que ele pode editar
            limpar_tela()
            visualizar_tarefas(lista_de_tarefas)
            puts ""

            # Perguntar qual ele quer deletar
            tarefa_para_editar = perguntar("editar")

            # Editar a tarefa
            editar_tarefas(lista_de_tarefas, tarefa_para_editar)
            puts ""

            # Confirmar resultado
            confirmar("editada")

        # Deletar tarefas
        elsif resposta == 4

            # Mostrar ao usuário as tarefas que ele pode deletar
            limpar_tela()
            visualizar_tarefas(lista_de_tarefas)
            puts ""

            # Perguntar qual tarefa o usuário quer deletar
            tarefa_para_deletar = perguntar("deletar")
            
            # Deletar a tarefa
            deletar_tarefas(lista_de_tarefas, tarefa_para_deletar)
            puts ""
            # Confirmar resultado
            limpar_tela()
            confirmar("deletada")
        end

    # Sair do app    
    elsif resposta == 5
        puts ""
        puts "Encerrando..."
        sleep(1)
        limpar_tela()

    # Alternativa inválida    
    else
        limpar_tela()
        puts "Alternativa inválida, tente novamente"
    end
end