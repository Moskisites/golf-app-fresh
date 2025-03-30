#!/usr/bin/env pwsh

# PowerShell script to deploy database migrations

# Colors for output
$GREEN = "e[32m"
$YELLOW = "e[33m"
$RED = "e[31m"
$NC = "e[0m" # No Color

Write-Host "${YELLOW}Deploy Database Migrations${NC}"
Write-Host "===="
Write-Host ""

# Deploy the migrations
Write-Host "${YELLOW}Deploying migrations...${NC}"
npx prisma migrate deploy

if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}Failed to deploy migrations.${NC}"
    exit 1
}

Write-Host "
${GREEN}Migrations deployed successfully!${NC}"
