terraform {
  backend "s3" {
    bucket = "zirong-state-bucket"
    key    = "terraform/state.tfstate"
    region = "ap-southeast-1"
  }
}
