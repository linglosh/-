from .research_agent import ResearchAgent
from .copywriting_agent import CopywritingAgent
from .compliance_agent import ComplianceAgent

class CoordinatorAgent:
    def __init__(self, api_key: str):
        self.research_agent = ResearchAgent()
        self.copywriting_agent = CopywritingAgent(api_key)
        self.compliance_agent = ComplianceAgent()

    def run_workflow(self, product: str) -> dict:
        # Step 1: Research
        research_result = self.research_agent.execute({"product": product})

        # Step 2: Copywriting
        copy_result = self.copywriting_agent.execute({"product": product})

        # Step 3: Compliance
        compliance_result = self.compliance_agent.execute(copy_result)

        return {
            "research": research_result,
            "copy": copy_result,
            "compliance": compliance_result
        }