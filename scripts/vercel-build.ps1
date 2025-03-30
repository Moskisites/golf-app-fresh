#!/usr/bin/env pwsh

# PowerShell script for Vercel build process

# Colors for output
$GREEN = "e[32m"
$YELLOW = "e[33m"
$RED = "e[31m"
$NC = "e[0m" # No Color

Write-Host "${YELLOW}Running Vercel Build Process${NC}"
Write-Host "===="

# Apply database migrations
Write-Host "${YELLOW}Applying database migrations...${NC}"
npx prisma migrate deploy

if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}Failed to apply migrations.${NC}"
    exit 1
}

Write-Host "${GREEN}Migrations applied successfully!${NC}"

# Generate Prisma client
Write-Host "${YELLOW}Generating Prisma client...${NC}"
npx prisma generate

if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}Failed to generate Prisma client.${NC}"
    exit 1
}

# Build the application
Write-Host "${YELLOW}Building the application...${NC}"
npm run vite:build

if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}Failed to build the application.${NC}"
    exit 1
}

Write-Host "${GREEN}Build completed successfully!${NC}"
