# Use an official Go 
FROM golang:1.20

# Set the working directory
WORKDIR /GOHOLAMUNDO

# Copy the Go file into the container
COPY holamundo.go /GOHOLAMUNDO/holamundo.go

# Command to run the program
CMD ["go", "run", "holamundo.go"]
