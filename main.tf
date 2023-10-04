provider "oci" {
  # Your OCI provider configuration here
}

module "business_tags" {
  source          = "./modules/tags"
  compartment_id  = var.compartment_id

  tags = [
    { name = "ocpu",       description = "Tag for OCPU" },
    { name = "mem",        description = "Tag for Memory" },
    { name = "storage",    description = "Tag for Storage" },
    { name = "bandw",      description = "Tag for Bandwidth" },
    { name = "name",       description = "Tag for Name" },
    { name = "resource",   description = "Tag for Resource" },
    { name = "business",   description = "Tag for Business Number" },
    { name = "environment",description = "Tag for Environment" }
  ]
}

# Variables
variable "compartment_id" {
  description = "The OCID of the compartment where resources should be created."
  type        = string
}
