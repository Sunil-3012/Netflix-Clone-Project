terraform {
  backend "s3" {
    bucket = "sunil-netflixclone-project" 
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}
