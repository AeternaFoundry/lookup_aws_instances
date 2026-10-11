variable "instances_lookup" {
  description = <<EOT
Map of instances_lookup, attributes below
Optional:
    - instance_state_names
    - instance_tags
    - region
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    instance_state_names = optional(set(string))
    instance_tags        = optional(map(string))
    region               = optional(string)
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

