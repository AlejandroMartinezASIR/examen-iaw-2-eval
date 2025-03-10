# Mostramos el ID de la instancia
output "instance_id" {
  description = "El ID de la instancia EC2"
  value       = aws_instance.instancia_ejercicio_2.id
}

# Mostramos el nombre del grupo de seguridad
output "security_group_name" {
  description = "El nombre del grupo de seguridad"
  value       = aws_security_group.grupo_seguridad_ejercicio_2.name
}