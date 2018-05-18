$top_scope_variable = "Hello from Yogesh and Dennis at Top Scope"

class toptest {
  notify { "message: $::top_scope_variable":}
}

include toptest
