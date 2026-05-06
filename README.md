# E-com Agent: Multi-Agent Product Selection & Copywriting Demo

基于 **MiniMax 大模型** 和 **多 Agent 协作** 的跨境电商智能选品与文案生成系统演示项目。  
本项目是我们在真实环境中投入使用的 Agent 系统的可开源演示版本，用于展示如何利用长链推理、多 Agent 编排与 MiniMax 的多语言能力，解决跨平台铺货中的市场调研、多语言文案生成和合规审核痛点。

## 🎯 核心痛点

跨境电商在 Amazon、TikTok Shop 等多平台铺货时，面临：
- 市场趋势与选品判断极度依赖人工爬取和主观经验
- 多语言文案（英/西/法/日等）撰写耗时，且难以兼顾本地化偏好和 SEO
- 侵权词、违禁成分等合规风险需要逐个人工排查
- 单人单日仅能处理约 20 个 SKU，无法支撑快速测品需求

## 🧠 核心逻辑链

本项目采用 **长链推理 + 多 Agent 协作** 架构：

1. **市场调研 Agent (Research Agent)**  
   抓取 TikTok/Amazon 热榜及商品评论，进行情感分析，并与历史销量数据做长程因果推理，输出选品得分及机会标签。

2. **文案生成 Agent (Copywriting Agent)**  
   接入选品结果，调用 **MiniMax 大模型** 结合目标市场文化偏好和平台 SEO 规则，生成英语、西班牙语等多语言标题与详情页文案。

3. **合规审核 Agent (Compliance Agent)**  
   自动筛查文案中的侵权词、违禁成分，并基于规则引擎做二次确认，返回修改建议或绿灯信号。

4. **协调 Agent (Coordinator Agent)**  
   调度上述 Agent 的执行顺序，实现失败自动重试和人工兜底接口，并记录全链路日志。

整个过程展示了 **长程上下文依赖**（趋势数据 → 选品 → 文案生成 → 合规修改）和 **多 Agent 协作**，最终将单 SKU 处理时间从分钟级压缩到秒级。

## 🛠️ 技术栈

- **大模型**: MiniMax (abab6.5s / abab5.5s) —— 提供长文本理解与多语言生成能力
- **Agent 框架**: 自研轻量 Coordinator + Function Call 编排（基于 `minimax` Python SDK）
- **数据源**: 演示用静态样本（真实系统接入 TikTok/Amazon API，但已脱敏）
- **后端语言**: Python 3.10+
- **其他依赖**: `requests`, `pandas`, `python-dotenv`

## 📂 项目结构
