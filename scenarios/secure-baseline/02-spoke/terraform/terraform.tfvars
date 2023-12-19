//The name of the environment (e.g. "dev", "test", "prod")
environment             = "dev"
tags                    = {}

#####################################
# Hub Network Configuration Variables
#####################################
hub_vnet_id                 = "<Hub VNET ID>"

#######################################
# Spoke Network Configuration Variables
#######################################
spoke_vnet_cidr           = ["10.240.0.0/20"]
appsvc_subnet_cidr        = ["10.240.0.0/26"]
front_door_subnet_cidr    = ["10.240.0.64/26"]
postgresql_subnet_cidr    = ["10.240.0.128/26"]
private_link_subnet_cidr  = ["10.240.11.0/24"]

deployment_options = {
}