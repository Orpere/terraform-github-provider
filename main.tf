# GitHub token variable
variable "github_token" {
  description = "github token"

}

variable "github_organization" {
  description = "my organisation"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

# Create a static GitHub repository
resource "github_repository" "test" {
  name        = "terraform-test"
  description = "my test github provider"
}
