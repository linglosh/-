from .base_agent import BaseAgent

class ComplianceAgent(BaseAgent):
    def __init__(self):
        super().__init__("Compliance Agent")
        self.forbidden_words = ["banned", "illegal"]  # Mock forbidden words

    def execute(self, input_data: dict) -> dict:
        copy = input_data.get("copy", {})
        issues = []
        for lang, text in copy.items():
            for word in self.forbidden_words:
                if word in text.lower():
                    issues.append(f"Forbidden word '{word}' in {lang}")
        return {"compliant": len(issues) == 0, "issues": issues}