variable "credentials_json" {
  description = "Google Cloud credentials JSON"
  type        = string
  sensitive   = true
}

variable "state_bucket" {
  description = "Name of the GCS bucket for Terraform state"
  type        = string
  default     = "terraform-state-bucket-2025"
}