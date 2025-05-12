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

variable "common_tags" {
  description = "Etiquetas comunes"
  type        = map(string)
}

variable "s3_bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}