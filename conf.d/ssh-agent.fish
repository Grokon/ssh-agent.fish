if not __ssh_agent_is_started
  __ssh_agent_start
  ssh-add
end

if not ssh-add -l >/dev/null 2>&1
  ssh-add
end