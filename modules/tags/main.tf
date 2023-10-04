resource "oci_identity_tag_namespace" "tag_namespace" {
  compartment_id = var.compartment_id
  description    = var.namespace_description
  name           = var.namespace_name
}

resource "oci_identity_tag" "tags" {
  for_each = { for tag in var.tags : tag.name => tag }

  tag_namespace_id = oci_identity_tag_namespace.tag_namespace.id
  description      = each.value.description
  name             = each.value.name
}
