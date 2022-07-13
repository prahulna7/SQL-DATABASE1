variable "location" {

  type        = string

  description = "location"

}

variable "applicationname" {

  type        = string

  description = "Name of the application"

}

variable "environment" {

  type        = string

  description = "Name of the environment"

}

variable "name" {

  type        = string

  description = "name of the log analytics workspace associated with"

}

variable "resource_group_name" {

  type        = string

  description = "name of resource group"

}

variable "retention_in_days" {

  type        = number

  description = "value"

  default     = 365

}

variable "daily_quota_gb" {

  type        = number

  description = "value"

  default     = 10

}

variable "tags" {

  type        = map(any)

  description = "A list of tags to be applied"

}