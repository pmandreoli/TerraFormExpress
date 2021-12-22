resource "openstack_networking_secgroup_v2" "tf-web" {
  name        = "tf-web"
  description = "[tf] Allow public HTTP + HTTPS connections"
}

resource "openstack_networking_secgroup_rule_v2" "tf-web-r1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "80"
  port_range_max    = "80"
  security_group_id = "${openstack_networking_secgroup_v2.tf-web.id}"
}

resource "openstack_networking_secgroup_rule_v2" "tf-web-r2" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "443"
  port_range_max    = "443"
  security_group_id = "${openstack_networking_secgroup_v2.tf-web.id}"
}

resource "openstack_networking_secgroup_rule_v2" "tf-web-r3" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = "8080"
  port_range_max    = "8080"
  security_group_id = "${openstack_networking_secgroup_v2.tf-web.id}"
}

