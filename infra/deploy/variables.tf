variable "prefix" {
  description = "The prefix to use for all resources"
  type        = string
  default     = "raa"
}

variable "project" {
  description = "The name of the project"
  type        = string
  default     = "learning-recipe-api"
}

variable "contact" {
  description = "The contact person for the project"
  type        = string
  default     = "adnan.softic"
}

variable "owner" {
  description = "The owner of the resources"
  type        = string
  default     = "adnan.softic"
}
