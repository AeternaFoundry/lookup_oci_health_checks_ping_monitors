variable "health_checks_ping_monitors_lookup" {
  description = <<EOT
Map of health_checks_ping_monitors_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - home_region
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    home_region    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

