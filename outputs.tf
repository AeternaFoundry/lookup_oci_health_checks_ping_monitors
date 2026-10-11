output "health_checks_ping_monitors_lookup_id" {
  description = "Map of id values across all health_checks_ping_monitors_lookup, keyed the same as var.health_checks_ping_monitors_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_health_checks_ping_monitors.health_checks_ping_monitors_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "health_checks_ping_monitors_lookup_compartment_id" {
  description = "Map of compartment_id values across all health_checks_ping_monitors_lookup, keyed the same as var.health_checks_ping_monitors_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_health_checks_ping_monitors.health_checks_ping_monitors_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "health_checks_ping_monitors_lookup_display_name" {
  description = "Map of display_name values across all health_checks_ping_monitors_lookup, keyed the same as var.health_checks_ping_monitors_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_health_checks_ping_monitors.health_checks_ping_monitors_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "health_checks_ping_monitors_lookup_filter" {
  description = "Map of filter values across all health_checks_ping_monitors_lookup, keyed the same as var.health_checks_ping_monitors_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_health_checks_ping_monitors.health_checks_ping_monitors_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "health_checks_ping_monitors_lookup_home_region" {
  description = "Map of home_region values across all health_checks_ping_monitors_lookup, keyed the same as var.health_checks_ping_monitors_lookup except keys with no home_region are omitted"
  value       = { for k, v in data.oci_health_checks_ping_monitors.health_checks_ping_monitors_lookup : k => v.home_region if v.home_region != null && length(v.home_region) > 0 }
}
output "health_checks_ping_monitors_lookup_ping_monitors" {
  description = "Map of ping_monitors values across all health_checks_ping_monitors_lookup, keyed the same as var.health_checks_ping_monitors_lookup except keys with no ping_monitors are omitted"
  value       = { for k, v in data.oci_health_checks_ping_monitors.health_checks_ping_monitors_lookup : k => v.ping_monitors if v.ping_monitors != null && length(v.ping_monitors) > 0 }
}

