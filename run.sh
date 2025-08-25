#!/bin/bash

# Launch the Orc Agent using the A2A Server framework
# Default: Run with info logging
# Debug mode: ./run.sh debug
# Production: ./run.sh prod

LOG_LEVEL=${1:-info}

if [ "$LOG_LEVEL" = "debug" ]; then
    echo "Starting Orc Agent in debug mode..."
    uv run -m orc_agent_a2a.main --config agent.yaml --log-level debug --list-routes
elif [ "$LOG_LEVEL" = "prod" ]; then
    echo "Starting Orc Agent in production mode..."
    uv run -m orc_agent_a2a.main --config agent.yaml
else
    echo "Starting Orc Agent with log level: $LOG_LEVEL"
    uv run -m orc_agent_a2a.main --config agent.yaml --log-level $LOG_LEVEL
fi

