
resource "openstack_networking_floatingip_v2" "fip" {
  count = "${var.instance_num}"
  pool = "EXT_NET"
}

resource "openstack_compute_floatingip_associate_v2" "fip_1" {
  count = "${var.instance_num}"
  floating_ip = element(openstack_networking_floatingip_v2.fip.*.address, count.index)
  instance_id = element(openstack_compute_instance_v2.Instance.*.id, count.index)
}

resource "openstack_compute_instance_v2" "Instance" {
  count = "${var.instance_num}"
  name = "kuber-${count.index+1}"

  image_id        = "${var.image_id}"
  flavor_id       = "${var.flavor_id}"
  key_pair        = "${var.keypair_name}"
  security_groups = "${var.security_groups}"
  network {
    name = "${var.network_name}"
  }

  metadata = {
    tag = "k8s"
  }

}

