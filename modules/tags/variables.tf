variable "compartment_id" {
  description = "The OCID of the compartment where resources should be created."
  type        = string
}

variable "namespace_name" {
  description = "Name of the tag namespace."
  type        = string
  default     = "business"
}

variable "namespace_description" {
  description = "Description of the tag namespace."
  type        = string
  default     = "Tag namespace for business"
}

variable "tags" {
  description = "List of tags to be created."
  type = list(object({
    name        = string
    description = string
  }))
}
