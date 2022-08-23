
@echo Meu_programa
@:tabelas
@echo tabelas:
@echo  ----------------------------
@echo 1. Mostrar data e hora
@echo 2. Alterar data
@echo 3. Alterar hora
@echo 4. Criar arquivo
@echo --help. Help
@echo --version. Versao
@echo exit. Sair
@echo  ----------------------------- 

@set /p tabelas=Escolha uma tabela: 


@if %tabelas% == 0 (goto :tabelas)
@if %tabelas% == 1 (goto :tabelas1)
@if %tabelas% == 2 (goto :tabelas2)
@if %tabelas% == 3 (goto :tabelas3)
@if %tabelas% == 4 (goto :tabelas4)
@if %tabelas% == --help (goto :tabelas8)
@if %tabelas% == --version (goto :tabelas9)
@if %tabelas% == exit (goto :tabelas10)


@pause

@goto :tabelas

@rem ========================================
@rem tabela Mostrar data e hora

@:tabelas1
@cls
@echo 1. Data e Hora
@date /t
@time /t
@pause
@cls
@goto :tabelas

@rem ========================================
rem tabela Alterar data

@:tabelas2
@cls
@echo 2. Alterar data
@date
@pause
@cls
@goto :tabelas
@rem ========================================
rem tabela Alterar hora

@:tabelas3
@cls
@echo 3. Alterar Hora
@time
@pause
@cls
@goto :tabelas

@rem ========================================
rem tabela criar arquivo

@:tabelas4
@cls
@echo 4. Criar arquivo
@set /p titulo=Informe o titulo:
@CriarArquivo > %titulo%.txt
@pause
@cls
@goto :tabelas

@rem =========================================

@goto :tabelas

@rem ========================================

rem tabela Help

@:tabelas8
@cls
@echo Help
@echo  Opcoes:
@echo Opcao 1		Mostrar data e hora = Mostra a data e a hora na tela.
@echo Opcao 2		Alterar data = Mostra a data na tela.
@echo Opcao 3		Alterar hora = Mostra a hora na tela.
@echo Opcao 4		Criar arquivo = Cria um arquivo e nomeia ele.
@echo --help		Help = Ajuda com a descricao das opcoes do programa Meu_programa.
@echo --version		Versao = Mostra a versao atual do programa Meu_programa.
@echo exit	        Sair = Sai do Meu_programa.

@pause
@cls
@goto :tabelas

@rem ========================================
rem tabela versao

@:tabelas9
@cls
@echo version 1.0.1

@pause
@cls
@goto :tabelas


@rem ========================================
rem tabela sair

@:opcao10
exit

@rem ========================================
