# backend.hcl
bucket         = "remotetfstate-38uf2"
region         = "us-east-2"
dynamodb_table = "remotetflocks-38uf2"
encrypt        = true
