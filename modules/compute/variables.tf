variable "ami_id" {
  description = "ID de la AMI"
  type        = string
}

variable "instance_type" {
  description = "Tipo de la instancia"
  type        = string
}

variable "key_name" {
  description = "Nombre de la clave"
  type        = string
}

variable "subnet_id" {
  description = "ID de la subred"
  type        = string
}

variable "security_group_ids" {
  description = "Lista de IDs de los grupos de seguridad"
  type        = list(string)
}

variable "tags" {
  description = "Etiquetas para la instancia"
  type        = map(string)
}

variable "name" {
  description = "Nombre de la instancia"
  type        = string
}
