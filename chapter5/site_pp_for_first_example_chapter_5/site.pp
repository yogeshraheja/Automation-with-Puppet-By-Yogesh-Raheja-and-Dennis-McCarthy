# Writing a puppet code without Puppet Classes for creating a simple file

file { "/var/tmp/firstmanifestfile":
        ensure  => "present",
        content => "My first file to understand real Puppet Master-Agent Architecture with Manifests\n",
}

# Writing a puppet code with Puppet Classes for creating a second file

class firstclass {
        file { "/var/tmp/secondmanifestfile":
                ensure  => "present",
                content => "My second file to understand Puppe Master-Agent Architecture with class definition and declarartion with Manifests\n",
        }
}

# Declaring a Puppet Class "firstclass" to get the code executed on the nodes

include firstclass
