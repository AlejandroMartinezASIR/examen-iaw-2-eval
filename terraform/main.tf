# Configuramos el proveedor de AWS
provider "aws" {
  region = var.region
}

#----------------------------------------------------------------
# Creamos un grupo de seguridad
resource "aws_security_group" "grupo_seguridad_ejercicio_2" {
  name        = var.security_group_name
  description = "Grupo de seguridad para la instancia de ejercicio 2"

  # Reglas de entrada para permitir el tráfico SSH, HTTP y HTTPS
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Reglas de salida para permitir todas las conexiones salientes
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Creamos una instancia EC2
resource "aws_instance" "instancia_ejercicio_2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.grupo_seguridad_ejercicio_2.name]

  root_block_device {
    volume_size = var.volume_size
  }

  tags = {
    Name = var.instance_name
  }
}