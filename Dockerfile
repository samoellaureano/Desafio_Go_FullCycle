FROM golang:alpine AS builder

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o código Go para o diretório de trabalho no container
COPY . .

# Executa o comando go mod init para gerar o arquivo go.mod
RUN go mod init goFullCycle

# Compila o código Go para uma imagem leve (binário)
RUN CGO_ENABLED=0 GOOS=linux go build -o app

# Nesta parte do código, estou definindo uma imagem especial utilizando a instrução FROM scratch. Essa instrução cria uma imagem vazia e mínima, que não possui um sistema operacional ou bibliotecas. Optei por usar essa abordagem para criar uma imagem final mais leve e eficiente, que executará apenas o binário do nosso aplicativo Go, sem carregar recursos desnecessários.
FROM scratch

# Utilizo a instrução COPY --from=builder /app/app / para copiar o binário gerado durante a compilação do aplicativo Go no estágio anterior, chamado "builder", para dentro da imagem final. O caminho /app/app indica onde o binário está localizado no estágio "builder", e o caminho / representa o local na imagem final onde quero colocar o binário.
COPY --from=builder /app/app /

# Comando que será executado quando o container for iniciado
CMD ["/app"]