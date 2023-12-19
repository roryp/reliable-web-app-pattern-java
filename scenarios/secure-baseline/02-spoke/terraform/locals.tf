locals {
  // If an environment is set up (dev, test, prod...), it is used in the application name
  environment = var.environment == "" ? "dev" : var.environment
  telemetryId = "BB720B18-3C24-4D84-8C28-7AC01F4D7F2C-spoke-${var.location}"

  base_tags = merge({
    "terraform"         = true
    "environment"       = local.environment
    "application-name"  = var.application_name
    "contoso-version"   = "1.0"
    "app-pattern-name"  = "java-rwa"
    "azd-env-name"     = var.application_name
  }, var.tags)

  hub_tokens              = split("/", var.hub_vnet_id)
  hub_subscription_id     = local.hub_tokens[2]
  hub_vnet_resource_group = local.hub_tokens[4]
  hub_vnet_name           = local.hub_tokens[8]

  app_service_subnet_name   = "serverFarm"
  ingress_subnet_name       = "ingress"
  postgresql_subnet_name    = "fs"
  private_link_subnet_name  = "privateLink"
}