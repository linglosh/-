ecom-agent-demo/
├── README.md
├── requirements.txt
├── .env.example
├── agents/
│ ├── init.py
│ ├── coordinator.py
│ ├── research_agent.py
│ ├── copywriting_agent.py
│ └── compliance_agent.py
├── data/
│ ├── sample_trends.json # 样例行研数据
│ └── seo_rules.json # SEO 规则示例
├── utils/
│ ├── minimax_client.py # MiniMax API 封装
│ └── logger.py
├── main.py # 启动入口
└── demo_output/ # 演示输出存放处

text

## 🚀 快速开始

### 1. 克隆仓库并安装依赖
```bash
git clone https://github.com/your-username/ecom-agent-demo.git
cd ecom-agent-demo
pip install -r requirements.txt
2. 配置 MiniMax API Key
复制环境变量模板并填入你的 MiniMax API Key：

bash
cp .env.example .env
编辑 .env 文件，设置：

text
MINIMAX_API_KEY=your_api_key_here
MINIMAX_GROUP_ID=your_group_id_here  # 可选
3. 运行演示
bash
python main.py --product "瑜伽裤" --market US --language en,es
系统将依次执行调研、生成英文和西班牙语文案、合规审核，并输出结果到 demo_output/。

4. 查看演示日志与输出
所有 Agent 的推理步骤均通过结构化日志打印，可在控制台观察完整的 长链推理 过程及多 Agent 交互。

📊 演示效果
以输入 "瑜伽裤" 目标市场 US，语言 en,es 为例，系统将输出：

选品建议：结合 TikTok 趋势和评论情感分析，给出选品机会评分及理由

多语言文案：

英语 Title / Bullet Points / Description，已注入高搜索量关键词

西班牙语版本，适配拉美裔消费者表达习惯

合规报告：筛查结果，如“无侵权词，可发布”或“建议修改含禁用成分描述”

以下为部分生成内容的截图（可替换为你的真实输出截图）：

<!-- 替换为真实截图链接 -->
https://demo_output/screenshot.png

🔍 与真实生产环境的关联
本演示项目完整复现了我们内部系统的核心 Agent 流水线。真实系统中：

调研 Agent 实时接入 TikTok 与 Amazon API，每日处理超 50 万条评论文本

文案生成 Agent 基于 MiniMax 长上下文能力，每日生产数万条多语言文案

日消耗约 300 万 tokens，支撑 300+ SKU 的铺货需求，选品命中率提升 40%，文案本地化效率提升 70%

本项目已剥离商业数据和 API 细节，替换为样本数据，但 Agent 调度逻辑、MiniMax 调用方式和合规链完全保留，可用来直接评估我们的 Agent 设计能力和 MiniMax 模型落地效果。

👥 团队 & 贡献
本项目由 [linglosh] 开发，用于 MiniMax 开发者计划演示与技术验证。
欢迎通过 Issues 提出建议。
