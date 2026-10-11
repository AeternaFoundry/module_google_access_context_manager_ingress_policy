variable "access_context_manager_ingress_policies" {
  description = <<EOT
Map of access_context_manager_ingress_policies, attributes below
Required:
    - ingress_policy_name
    - resource
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    ingress_policy_name = string
    resource            = string
    deletion_policy     = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

