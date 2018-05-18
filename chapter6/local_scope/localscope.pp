class local_scope_variable {
  $local_variable = "Hello again from us at Local Scope!"
  notify {"Message from here: $local_variable":}
  notify {"Node scope: $node_scope_variable Top scope: $top_scope_variable":}
}
