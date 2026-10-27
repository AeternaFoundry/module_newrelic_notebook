output "notebooks_id" {
  description = "Map of id values across all notebooks, keyed the same as var.notebooks"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.id }
}
output "notebooks_blob_id" {
  description = "Map of blob_id values across all notebooks, keyed the same as var.notebooks"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.blob_id }
}
output "notebooks_content" {
  description = "Map of content values across all notebooks, keyed the same as var.notebooks"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.content }
}
output "notebooks_guid" {
  description = "Map of guid values across all notebooks, keyed the same as var.notebooks"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.guid }
}
output "notebooks_organization_id" {
  description = "Map of organization_id values across all notebooks, keyed the same as var.notebooks"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.organization_id }
}
output "notebooks_title" {
  description = "Map of title values across all notebooks, keyed the same as var.notebooks"
  value       = { for k, v in newrelic_notebook.notebooks : k => v.title }
}

