resource "aws_dynamodb_table" "this" {
  name         = var.remote_backend.dynamo_table_name
  hash_key     = var.remote_backend.hash_key
  billing_mode = var.remote_backend.dynamo_billing_mode

  attribute {
    name = var.remote_backend.hash_key
    type = var.remote_backend.hash_key_type
  }
}