variable "project_id" {
  type        = string
  description = "Your project ID."
}

variable "organization_id" {
  type        = string
  description = "Your organization ID."
}

variable "scw_region" {
  type        = string
  description = "Scaleway region."
}

variable "scw_access_key" {
  type        = string
  sensitive   = true
  description = "Scaleway Access Key"
}

variable "scw_secret_key" {
  type        = string
  sensitive   = true
  description = "Scaleway Secret Key"
}
