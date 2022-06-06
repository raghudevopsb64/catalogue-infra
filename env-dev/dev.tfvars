VPC_CIDR_BLOCK = "10.10.1.0/24"
ENV            = "dev"
SUBNET_CIDR    = ["10.10.1.0/25", "10.10.1.128/25"]

ENGINE              = "docdb"
ENGINE_VERSION      = "4.0.0"
NODE_TYPE           = "db.t3.medium"
NODE_COUNT          = 1
FAMILY              = "docdb4.0"
SKIP_FINAL_SNAPSHOT = true
