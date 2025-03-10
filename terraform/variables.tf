variable "region" {
  description = "La región de AWS a utilizar"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "ID de la AMI para la instancia EC2"
  default     = "ami-04b4f1a9cf54c11d0"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  default     = "t2.medium"
}

variable "key_name" {
  description = "Nombre de la clave SSH"
  default     = "vockey"
}

variable "security_group_name" {
  description = "Nombre del grupo de seguridad"
  default     = "grupo_seguridad_ejercicio_2"
}

variable "instance_name" {
  description = "Nombre de la instancia EC2"
  default     = "instancia_ejercicio_2"
}

variable "volume_size" {
  description = "Tamaño del volumen EBS en GB"
  default     = 30
}