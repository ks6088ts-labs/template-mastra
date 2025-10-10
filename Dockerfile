# Build stage
FROM node:22.17.0-alpine AS deps
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm@10.15.1 && pnpm install --frozen-lockfile

# Build stage
FROM node:22.17.0-alpine AS builder
WORKDIR /usr/src/app
COPY --from=deps /usr/src/app/node_modules ./node_modules
COPY . .
RUN npm install -g pnpm@10.15.1 && pnpm build

# Production stage
FROM node:22.17.0-alpine AS runner
WORKDIR /usr/src/app

ENV NODE_ENV=production

COPY --from=builder /usr/src/app/.mastra ./.mastra

EXPOSE 4111

ENV PORT="4111"
ENV HOSTNAME="0.0.0.0"

CMD ["node", "--import=./.mastra/output/instrumentation.mjs", ".mastra/output/index.mjs"]
