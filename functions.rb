def linha(texto)
    puts "------------ #{texto} ------------"
    puts ""
end

def perguntar(texto)
    print "Digite o número da tarefa que você deseja #{texto}: "
    gets.chomp.to_i
end

def confirmar(texto)
    puts "Tarefa #{texto} com sucesso!"
end

def limpar_tela()
    puts `clear`
end

def menu_principal()
    linha("Menu Principal")
    print "[1] Criar
[2] Visualizar
[3] Editar
[4] Deletar
[5] Sair

Opção: "

end

def criar_tarefas()
    # Função para criar novas tarefas

    limpar_tela()
    linha("Nova Tarefa")
    puts "Digite a tarefa: "
    @tarefa = gets.chomp
    limpar_tela()
    return @tarefa
end

def listar_tarefas(lista_de_tarefas)
    # Função para listar enumeradas todas as tarefas cadastradas

    lista_de_tarefas.each do |tarefa|
        puts "#{lista_de_tarefas.index(tarefa) + 1} - #{tarefa}"
    end
end

def visualizar_tarefas(lista_de_tarefas)
    # Função para exibir na tela todas as tarefas salvas

    linha("Tarefas")
    listar_tarefas(lista_de_tarefas)
end

def editar_tarefas(lista_de_tarefas, numero_da_tarefa)
    # Função para editar tarefas

    linha("Editar Tarefa")
    print "Digite a alteração na tarefa #{numero_da_tarefa}: "
    tarefa_editada = gets.chomp

    lista_de_tarefas.each do |tarefa|
        if lista_de_tarefas.index(tarefa) == (numero_da_tarefa - 1)
            lista_de_tarefas.delete_at(numero_da_tarefa-1)
            lista_de_tarefas.insert(numero_da_tarefa-1, "#{tarefa_editada}")
        end
    end

end

def deletar_tarefas(lista_de_tarefas, numero_da_tarefa)
    # Função para excluir tarefas

    lista_de_tarefas.delete_at(numero_da_tarefa-1)
end