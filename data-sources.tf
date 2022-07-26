data "aws_availability_zones" "available" {
  state = "available"
}

data "terraform_remote_state" "foo" {
  backend = "local"

  config = {
    path = "${path.module}/../../terraform.tfstate"
  }
}

