module "frontend_server" {
  source = "../../modules/compute" # Ruta al módulo child

  ami_id             = var.frontend_ami
  instance_type      = var.frontend_instance_type
  key_name           = var.frontend_key_name
  subnet_id          = var.public_subnet_id
  security_group_ids = [var.frontend_sg_id]
  tags               = var.tags
  name               = "frontend-ec2"
}

module "backend_server" {
  source = "../../modules/compute"  # Ruta hacia tu módulo child

  ami_id              = var.backend_ami
  instance_type       = var.backend_instance_type
  key_name            = var.backend_key_name
  subnet_id           = var.private_subnet_id
  security_group_ids  = [var.backend_sg_id]
  tags                = var.tags
  name                = "backend-ec2"
}

module "s3_bucket" {
  source = "../../modules/s3" # Ruta al módulo child

  bucket_name = var.s3_bucket_name
  tags        = var.tags

}