terraform {
  backend "s3" {
    bucket = "terraform-ansible-jenkins-0419"
    key = "server/statefile"
    region = "us-west-1"
  }
}  
