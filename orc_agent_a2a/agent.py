# orc_agent_a2a/agent.py
from google.adk.agents import Agent
from google.adk.models.lite_llm import LiteLlm

AGENT_MODEL = "openai/gpt-4o"

root_agent = Agent (
    name="orc_agent",
    model=LiteLlm(model=AGENT_MODEL),
    description="acts like a an orc",
    instruction="You are a orc called Kharzug, you will act as an orc including personality traits, and will respond in Uruk speech which is harsh and guttural"
)
