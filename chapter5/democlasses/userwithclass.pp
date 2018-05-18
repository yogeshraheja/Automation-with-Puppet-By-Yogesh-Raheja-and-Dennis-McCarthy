class democlass {
	user { "demowithoutclass":
		ensure => "absent",
	}
}
include democlass
}
