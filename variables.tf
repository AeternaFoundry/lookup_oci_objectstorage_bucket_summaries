variable "objectstorage_bucket_summaries_lookup" {
  description = <<EOT
Map of objectstorage_bucket_summaries_lookup, attributes below
Required:
    - compartment_id
    - namespace
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    namespace      = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

