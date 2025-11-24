variable "key_id" {
  type        = string
  description = "The Gitlab key ID for the pre-existing deploy key"
}

variable "project" {
  type        = string
  description = "The name or ID of the project to add the deploy key to"
}

variable "can_push" {
  type        = bool
  default     = false
  description = "Can deploy key push to the project's repository"
}
