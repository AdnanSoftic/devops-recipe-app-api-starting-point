variable "tf_state_bucket" {
  description = "The name of the S3 bucket to store the Terraform state file"
  type        = string
  default     = "recipe-tf-state"
}

variable "tf_state_table" {
  description = "The name of the DynamoDB table to store the Terraform state lock"
  type        = string
  default     = "learning-recipe-tf-lock"
}

variable "owner" {
  description = "The owner of the resources"
  type        = string
  default     = "adnan.softic"
}

variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
}

variable "project" {
  description = "The name of the project"
  type        = string
  default     = "learning-recipe"
}

variable "contact" {
  description = "The contact person for the project"
  type        = string
  default     = "adnan.softic"
}
