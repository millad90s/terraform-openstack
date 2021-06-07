terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.42.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_name   = "T201"
  tenant_name = "T2shoot"
#   password    = "mypassword"
  password    =  "${var.openstack_password}"
  auth_url    = "http://openstack-host.t2shoot.ir:5000/v3"
  region      = "RegionOne"
}
