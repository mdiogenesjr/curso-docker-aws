terraform{
  backend "s3" {
    bucket = "aws-curso-teraform-state"
    key = "beerstore-curso-online"
    region = "us-east-1"
    profile = "terraform"
  }
}