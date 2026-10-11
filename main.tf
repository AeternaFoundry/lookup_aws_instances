data "aws_instances" "instances_lookup" {
  for_each = var.instances_lookup

  instance_state_names = each.value.instance_state_names
  instance_tags        = each.value.instance_tags
  region               = each.value.region

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      values = filter.value.values
    }
  }
}

