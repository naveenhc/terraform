terraform {
  required_providers {
    github = {
        source = "integrations/github"
        version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "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"
}

# resource "github_repository" "demoRemo" {
#   name = "test"
#   description = "My codebase"
#   visibility = "public"
# }