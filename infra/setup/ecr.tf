##############################################
# Create ECR repos for storing Docker images #
##############################################

resource "aws_ecr_repository" "app" {
  name                 = "recipe-app-api-app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    # Note: Update this to true for real deployments
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "recipe-app-api-proxy"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    # Note: Update this to true for real deployments
    scan_on_push = false
  }
}
