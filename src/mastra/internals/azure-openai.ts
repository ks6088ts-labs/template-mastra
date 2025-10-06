import { createAzure } from "@ai-sdk/azure";

const azure = createAzure({
	resourceName: process.env.AZURE_OPENAI_NAME!,
	apiKey: process.env.AZURE_OPENAI_API_KEY!,
	apiVersion: process.env.AZURE_OPENAI_API_VERSION!,
	useDeploymentBasedUrls: true,
});

export default azure;
