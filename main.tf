resource "newrelic_notebook" "notebooks" {
  for_each = var.notebooks

  content = each.value.content
  title   = each.value.title

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

