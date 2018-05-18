class democlassone {
	group { "groupwithoutclass":
		ensure => "absent",
	}
}
include democlassone
