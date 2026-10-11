variable "notebooks" {
  description = <<EOT
Map of notebooks, attributes below
Required:
    - content
    - title
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    content = string
    title   = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

