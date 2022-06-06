module "vpc" {
  source         = "git::https://github.com/raghudevopsb64/tf-module-vpc.git"
  VPC_CIDR_BLOCK = var.VPC_CIDR_BLOCK
  COMPONENT      = var.COMPONENT
  ENV            = var.ENV
  SUBNET_CIDR    = var.SUBNET_CIDR
  AZ             = var.AZ
}

module "documentdb" {
  depends_on          = [module.vpc]
  source              = "git::https://github.com/raghudevopsb64/tf-module-documentdb.git"
  ENGINE              = var.ENGINE
  ENGINE_VERSION      = var.ENGINE_VERSION
  NODE_TYPE           = var.NODE_TYPE
  ENV                 = var.ENV
  COMPONENT           = var.COMPONENT
  NODE_COUNT          = var.NODE_COUNT
  FAMILY              = var.FAMILY
  SKIP_FINAL_SNAPSHOT = var.SKIP_FINAL_SNAPSHOT
}