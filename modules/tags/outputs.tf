output "business_namespace_id" {
  description = "The ID of the 'business' tag namespace."
  value       = oci_identity_tag_namespace.tag_namespace.id
}
