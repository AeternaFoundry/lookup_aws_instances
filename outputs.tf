output "instances_lookup_id" {
  description = "Map of id values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "instances_lookup_filter" {
  description = "Map of filter values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "instances_lookup_ids" {
  description = "Map of ids values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "instances_lookup_instance_state_names" {
  description = "Map of instance_state_names values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.instance_state_names if v.instance_state_names != null && length(v.instance_state_names) > 0 }
}
output "instances_lookup_instance_tags" {
  description = "Map of instance_tags values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.instance_tags if v.instance_tags != null && length(v.instance_tags) > 0 }
}
output "instances_lookup_ipv6_addresses" {
  description = "Map of ipv6_addresses values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.ipv6_addresses if v.ipv6_addresses != null && length(v.ipv6_addresses) > 0 }
}
output "instances_lookup_private_ips" {
  description = "Map of private_ips values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.private_ips if v.private_ips != null && length(v.private_ips) > 0 }
}
output "instances_lookup_public_ips" {
  description = "Map of public_ips values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.public_ips if v.public_ips != null && length(v.public_ips) > 0 }
}
output "instances_lookup_region" {
  description = "Map of region values across all instances_lookup, keyed the same as var.instances_lookup"
  value       = { for k, v in data.aws_instances.instances_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

