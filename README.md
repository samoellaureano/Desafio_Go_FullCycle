# Desafio Go FullCycle - Resposta 😎

O objetivo era criar e publicar uma imagem Docker no Docker Hub que, ao ser executada, exibisse a mensagem "Full Cycle Rocks!!" 🚀 E claro, a tarefa foi um sucesso!

Inicialmente, tive que escrever o código Go para exibir a mensagem desejada. Com a ajuda do site da Go Lang, aprendi como fazer um "olá mundo" e rapidamente adaptei para imprimir a mensagem que queríamos.

Depois disso, foi a hora de construir a imagem Docker. Utilizei o Dockerfile e aproveitei a imagem base do Golang. Com a técnica de multiestágios, pude criar uma imagem extremamente leve, mantendo apenas o binário do meu aplicativo e nada mais. Afinal, o desafio pedia para que a imagem tivesse menos de 2MB! 😲

Após o build da imagem, foi emocionante rodar o container e ver a mensagem "Full Cycle Rocks!!" sendo exibida com sucesso. 🎉

Definitivamente, esse desafio me proporcionou uma oportunidade única para aprimorar minhas habilidades em Go, Docker e compartilhar conhecimento com a comunidade. Foi divertido e desafiador, e mal posso esperar para encarar novos desafios no futuro! 💪

---

Link para o Pull Request da imagem Docker: [samoellaureano/fullcycle](https://hub.docker.com/r/samoellaureano/fullcycle)
