variable "private_endpoint_list" {
  type        = list(any)
  default     = []
  description = "private endpoint list"
}

variable "resource_group_output" {
  type        = map(any)
  default     = {}
  description = "resource group output"
}

variable "storage_account_output" {
  type        = map(any)
  default     = {}
  description = "storage account output"
}

variable "subnet_output" {
  type        = map(any)
  default     = {}
  description = "subnet output"
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resources if not any"
}
