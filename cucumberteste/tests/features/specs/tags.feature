#language: pt

@tag_funcionalidade
Funcionalidade: Trabalhando com Chamado de Steps

Cenario: Amasso laranjas
Dado que eu tenho 10 laranjas na loja
Quando eu amasso 2 laranjas da loja
Então eu verifico quantas laranjas sobraram na loja

@tag_cenario_revendo_laranjas
Cenario: Revendo laranjas
Quando eu vendo 2 laranjas
Então eu verifico com quantas laranjas eu fiquei na loja