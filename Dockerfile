# Usa la imagen oficial de Go como base
FROM golang:1.20

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo `main.go` al contenedor
COPY holamundo.go .

# Compila el programa
RUN go build -o hola

# Comando por defecto para ejecutar el programa
CMD ["./hola"]
