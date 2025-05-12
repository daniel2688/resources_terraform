variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string  
}

variable "tags" {
  description = "Etiquetas para la instancia"
  type        = map(string)
}