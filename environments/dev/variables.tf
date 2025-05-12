variable "frontend_ami" {
  description = "AMI para frontend"
  type        = string
}

variable "frontend_instance_type" {
  description = "Tipo de instancia EC2 para frontend"
  type        = string
}

variable "frontend_key_name" {
  description = "Key pair para frontend"
  type        = string
}

variable "public_subnet_id" {
  description = "Subnet pública"
  type        = string
}

variable "frontend_sg_id" {
  description = "Security group para frontend"
  type        = string
}

variable "s3_bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}

variable "tags" {
  description = "Mapa de etiquetas"
  type        = map(string)
  
}
# variable "AWS_DEFAULT_REGION" {
#   description = "La región predeterminada de AWS"
#   type        = string
# }
