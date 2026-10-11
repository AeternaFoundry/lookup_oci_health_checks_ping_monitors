data "oci_health_checks_ping_monitors" "health_checks_ping_monitors_lookup" {
  for_each = var.health_checks_ping_monitors_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  home_region    = each.value.home_region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

