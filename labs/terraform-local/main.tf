terraform {
  required_version = ">= 1.4, < 2.0"
}

resource "terraform_data" "lesson" {
  input = "infra-learning-ok"
}

output "lesson" {
  value = terraform_data.lesson.output
}
