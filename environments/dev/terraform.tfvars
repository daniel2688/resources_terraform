frontend_ami           = "ami-097947612b141c026"
frontend_instance_type = "t2.micro"
frontend_key_name      = "MyAWSKey"
public_subnet_id       = "subnet-04d1c2e5ff54d3aa2"
frontend_sg_id         = "sg-0805e3125cdb75f1e"
s3_bucket_name         = "mi-bucket-terraform-danicor-2688"
tags = {
  "createdby" = "terraform"
}

backend_ami           = "ami-097947612b141c026"
backend_instance_type = "t2.micro"
backend_key_name      = "MyAWSKey"
private_subnet_id      = "subnet-01ab47a3aceb1d530"
backend_sg_id          = "sg-0805e3125cdb75f1e"