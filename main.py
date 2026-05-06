import os
from dotenv import load_dotenv
from src.agents.coordinator_agent import CoordinatorAgent

def main():
    load_dotenv()
    api_key = os.getenv("MINIMAX_API_KEY")
    if not api_key:
        print("Please set MINIMAX_API_KEY in .env file")
        return

    coordinator = CoordinatorAgent(api_key)
    product = "Wireless Headphones"  # Example product
    result = coordinator.run_workflow(product)

    print("Workflow Result:")
    print(result)

if __name__ == "__main__":
    main()