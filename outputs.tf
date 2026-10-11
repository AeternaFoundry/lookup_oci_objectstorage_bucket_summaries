output "objectstorage_bucket_summaries_lookup_id" {
  description = "Map of id values across all objectstorage_bucket_summaries_lookup, keyed the same as var.objectstorage_bucket_summaries_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_objectstorage_bucket_summaries.objectstorage_bucket_summaries_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "objectstorage_bucket_summaries_lookup_bucket_summaries" {
  description = "Map of bucket_summaries values across all objectstorage_bucket_summaries_lookup, keyed the same as var.objectstorage_bucket_summaries_lookup except keys with no bucket_summaries are omitted"
  value       = { for k, v in data.oci_objectstorage_bucket_summaries.objectstorage_bucket_summaries_lookup : k => v.bucket_summaries if v.bucket_summaries != null && length(v.bucket_summaries) > 0 }
}
output "objectstorage_bucket_summaries_lookup_compartment_id" {
  description = "Map of compartment_id values across all objectstorage_bucket_summaries_lookup, keyed the same as var.objectstorage_bucket_summaries_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_objectstorage_bucket_summaries.objectstorage_bucket_summaries_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "objectstorage_bucket_summaries_lookup_filter" {
  description = "Map of filter values across all objectstorage_bucket_summaries_lookup, keyed the same as var.objectstorage_bucket_summaries_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_objectstorage_bucket_summaries.objectstorage_bucket_summaries_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "objectstorage_bucket_summaries_lookup_namespace" {
  description = "Map of namespace values across all objectstorage_bucket_summaries_lookup, keyed the same as var.objectstorage_bucket_summaries_lookup except keys with no namespace are omitted"
  value       = { for k, v in data.oci_objectstorage_bucket_summaries.objectstorage_bucket_summaries_lookup : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}

