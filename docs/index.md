# Logs

- [Install Mastra](https://mastra.ai/en/docs/getting-started/installation)

```shell
$ pnpm create mastra@latest

┌   Mastra Create
│
◇  What do you want to name your project?
│  template-mastra
│
◇  Project structure created
│
◇  pnpm dependencies installed
│
◇  mastra installed
│
◇  Mastra dependencies installed
│
◇  .gitignore added
│
└  Project created successfully


┌   Mastra Init
│
◇  Where should we create the Mastra files? (default: src/)
│  src/
│
◇  Select default provider:
│  OpenAI
│
◇  Enter your openai API key?
│  Skip for now
│
◇  Make your AI IDE into a Mastra expert? (installs Mastra docs MCP server)
│  VSCode
│
◇
│
◇   ─────────────────────────────────────────────────────────╮
│                                                            │
│                                                            │
│        Mastra initialized successfully!                    │
│                                                            │
│        Add your OPENAI_API_KEY as an environment variable  │
│        in your .env file                                   │
│                                                            │
│                                                            │
├────────────────────────────────────────────────────────────╯
│
└
   To start your project:

    cd template-mastra
    pnpm run dev
```

Set up Git repository

```shell
# move to project directory
$ cd template-mastra

# start development server
$ pnpm run dev

# Initialize a new Git repository
$ git init; git add .; git commit -m "Initial commit"
$ gh repo create ks6088ts-labs/template-mastra --public --source=. --remote=origin --push
```

Support Azure OpenAI: [AI SDK > Azure OpenAI Provider](https://ai-sdk.dev/providers/ai-sdk-providers/azure)

## References

- [Mastra Documentation](https://mastra.ai/en/docs/)
- [Creating a Dockerfile](https://mastra.ai/en/docs/deployment/cloud-providers/aws-lambda#creating-a-dockerfile)
- [Mastra で作る AI エージェント入門](https://zenn.dev/serinuntius/books/4346a0fc6818f3)
- [AI エージェント開発/運用入門 > 第 5 章 Mastra でフルスタック Web アプリを作ろう](https://github.com/minorun365/agent-book/tree/main/chapter5)
