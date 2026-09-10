module "s3" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "= 4.6.0"
  bucket  = "payment-processor-app-backend-state-bucket"
  versioning = {
    enabled = true
  }
  force_destroy = false
  server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        sse_algorithm = "AES256"
      }
    }
  }
  tags = {
    dataClass = "infrastructure-state"
  }
}



