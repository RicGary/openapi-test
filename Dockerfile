FROM openjdk:12-jdk-alpine

# Define um argumento para o arquivo JAR e especifica o caminho no container
ARG JAR_FILE=target/competency-server-0.0.1-SNAPSHOT.jar

# Cria um diretório de trabalho para o aplicativo
WORKDIR /app

# Copia os arquivos de configuração
COPY configs /app/configs

# Copia o arquivo JAR para o diretório de trabalho
COPY ${JAR_FILE} app.jar
# Define o comando de execução

ENTRYPOINT ["java", "-jar", "app.jar"]
