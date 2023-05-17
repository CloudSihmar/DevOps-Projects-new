terraform {
  backend "s3" {
    bucket = "terraform-state-0419"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
}  
