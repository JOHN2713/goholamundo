# **GO HOLA MUNDO**

Un proyecto simple que demuestra cómo crear y ejecutar un programa "Hola Mundo" en Go (Golang), incluyendo su containerización con Docker.

## Descripción
Este proyecto implementa un programa básico en Go que imprime "Hola, Mundo" en la consola. Es un ejemplo perfecto para entender la estructura básica de un programa Go y su despliegue en un contenedor Docker.

## Requisitos
- **Runtime**: Go 1.20 o superior
- **Docker**: (opcional) para la ejecución containerizada

## Estructura del Proyecto
```
go-hola-mundo/
│
├── holamundo.go     # Archivo principal de Go
├── Dockerfile       # Configuración de Docker
└── README.md        # Este archivo
```

## Contenido de los Archivos

### holamundo.go
```go
package main

import "fmt"

func main() {
    fmt.Println("Hola, Mundo")
}
```

### Dockerfile
```dockerfile
# Use an official Go 
FROM golang:1.20

# Set the working directory
WORKDIR /GOHOLAMUNDO

# Copy the Go file into the container
COPY holamundo.go /GOHOLAMUNDO/holamundo.go

# Command to run the program
CMD ["go", "run", "holamundo.go"]
```

## Instalación y Ejecución

### Clonar el Repositorio
```bash
git clone https://github.com/<tu-usuario>/go-hola-mundo.git
cd go-hola-mundo
```

### Ejecución Local con Go
Asegúrate de tener Go instalado en tu sistema y ejecuta:
```bash
go run holamundo.go
```

Para compilar y crear un ejecutable:
```bash
go build holamundo.go
./holamundo  # En Unix/Linux/MacOS
holamundo.exe  # En Windows
```

### Ejecución con Docker

**Paso 1: Construir la Imagen**
```bash
docker build -t go-hola-mundo .
```

**Paso 2: Ejecutar el Contenedor**
```bash
docker run go-hola-mundo
```

## Docker Hub
La imagen de este proyecto está disponible públicamente en Docker Hub:
[Go Hola Mundo en Docker Hub](https://hub.docker.com/repository/docker/john2713/hola-mundo-go/general)

Para descargar y ejecutar la imagen directamente desde Docker Hub:
```bash
docker pull john2713/hola-mundo-go:latest
docker run john2713/hola-mundo-go:latest
```

## Despliegue en Docker Hub

**Paso 1: Etiquetar la Imagen**
```bash
docker tag go-hola-mundo john2713/hola-mundo-go:latest
```

**Paso 2: Publicar en Docker Hub**
```bash
docker push john2713/hola-mundo-go:latest
```

## Guía de Desarrollo

### Prerrequisitos
1. Go 1.20 o superior instalado
2. Docker (opcional)
3. Git

### Configuración del Entorno de Desarrollo
1. Instala Go en tu sistema
   - Descarga Go desde [golang.org](https://golang.org/dl/)
   - Sigue las [instrucciones de instalación](https://golang.org/doc/install)

2. Verifica la instalación:
   ```bash
   go version
   ```

3. Configura tu GOPATH (si no lo has hecho):
   ```bash
   export GOPATH=$HOME/go  # En Unix/Linux/MacOS
   setx GOPATH "%USERPROFILE%\go"  # En Windows
   ```

## Mejores Prácticas
- El código sigue las convenciones de estilo de Go
- Se utiliza una versión estable de Go
- El Dockerfile está optimizado para un despliegue ligero
- Se mantiene la simplicidad característica de Go

## Características
- Implementación minimalista de "Hola Mundo"
- Ejemplo de programa Go completamente funcional
- Configuración Docker optimizada
- Fácil de entender y modificar

## Resolución de Problemas Comunes
1. **Error de GOPATH**
   - Asegúrate de que tu GOPATH está correctamente configurado
   - Verifica las variables de entorno

2. **Error de Docker**
   - Verifica que Docker está en ejecución
   - Comprueba los permisos de Docker

## Contribuir
1. Haz fork del proyecto
2. Crea una rama para tu característica (`git checkout -b feature/nueva-caracteristica`)
3. Realiza tus cambios (`git commit -am 'Agrega nueva característica'`)
4. Sube los cambios (`git push origin feature/nueva-caracteristica`)
5. Abre un Pull Request

## Registro de Cambios
- **1.0.0** (Fecha)
  - Versión inicial del proyecto
  - Implementación básica de "Hola Mundo"
  - Configuración de Docker
  - Publicación en Docker Hub

## Licencia
Este proyecto está licenciado bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

## Enlaces Importantes
- [Imagen en Docker Hub](https://hub.docker.com/repository/docker/john2713/hola-mundo-go/general)
- [Documentación oficial de Go](https://golang.org/doc/)
- [Guía de Docker para Go](https://docs.docker.com/language/golang/)

## Autor
- JOHN2713

---
*Nota: Los comandos de Docker utilizan el usuario 'john2713'. Asegúrate de cambiar esto por tu propio usuario de Docker Hub si vas a crear tu propia versión del proyecto.*
