terraform {
  required_version = ">= 0.13"

  required_providers {
    aws = {                     # Sección donde se define el proveedor requerido (en este caso, AWS).
      source  = "hashicorp/aws" # Especifica que el proveedor AWS será descargado desde HashiCorp Registry.
      version = ">= 5.89"       # Define que se usará la versión 5.89 o superior del proveedor AWS.
    }
    random = {                     # Sección donde se define el proveedor requerido (en este caso, Random).
      source  = "hashicorp/random" # Especifica que el proveedor Random será descargado desde HashiCorp Registry.
      version = "3.4"              # Define que se usará la versión 3.4 o superior del proveedor Random.
    }
    local = {                     # Sección donde se define el proveedor requerido (en este caso, Local).
      source  = "hashicorp/local" # Especifica que el proveedor Local será descargado desde HashiCorp Registry.
      version = "2.2"             # Define que se usará la versión 2.2 o superior del proveedor Local.
    }
    tls = {                     # Sección donde se define el proveedor requerido (en este caso, TLS).
      source  = "hashicorp/tls" # Especifica que el proveedor TLS será descargado desde HashiCorp Registry.
      version = "3.0"           # Define que se usará la versión 5.0 o superior del proveedor TLS.
    }
  }
}

provider "aws" {
#   region = "us-east-1" # Define la región de AWS donde se desplegarán los recursos (en este caso, "us-east-1").
  # profile = var.tags["profile"] # Indica el perfil de AWS a usar. Este perfil debe estar configurado previamente en tu archivo de credenciales de AWS (~/.aws/credentials).
  #   alias   = "virginia"          # Define un alias para el proveedor. Este alias se usará para referenciar este proveedor en otros recursos.

  default_tags { # Define los tags que se aplicarán a todos los recursos creados por este proveedor.
    tags = {
      Project     = "test"
      Environment = "dev"
      Creation    = "2025"
      ManagedBy   = "danicor2688"
    }
  }
}