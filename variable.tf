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

variable "key_vault_output" {
  type        = map(any)
  default     = {}
  description = "key vault output"
}

variable "windows_web_app_output" {
  type        = map(any)
  default     = {}
  description = "windows web app output"
}

variable "redis_cache_output" {
  type        = map(any)
  default     = {}
  description = "redis cache output"
}

variable "subnet_output" {
  type        = map(any)
  default     = {}
  description = "subnet output"
}

variable "private_dns_zone_output" {
  type        = map(any)
  default     = {}
  description = "private dns zone output"
}

variable "default_values" {
  type        = any
  default     = {}
  description = "Provide default values for resources if not any"
}
