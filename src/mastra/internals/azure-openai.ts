import { createAzure } from "@ai-sdk/azure";

const azure = createAzure({
  resourceName: process.env.AZURE_OPENAI_NAME || "your-resource-name",
  apiKey: process.env.AZURE_OPENAI_API_KEY || "your-api-key",
  apiVersion: process.env.AZURE_OPENAI_API_VERSION || "2025-04-01-preview",
  useDeploymentBasedUrls: true,
});

export default azure;
