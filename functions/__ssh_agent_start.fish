function __ssh_agent_start -d "start a new ssh agent"
    set --local SSH_ENV $HOME/.ssh/agent.env.fish
    ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
    chmod 600 $SSH_ENV
    source $SSH_ENV > /dev/null
end
