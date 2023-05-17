terraform {
  backend "s3" {
    bucket = "terraform-ansible-bucket-004"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
