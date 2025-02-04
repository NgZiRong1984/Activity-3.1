terraform {
  backend "s3" {
    bucket = "zirong-state-bucket-2"
    key    = "terraform/state.tfstate"
    region = "ap-southeast-1"
  }
}
