#!/usr/bin/env pwsh

# PowerShell script for creating Prisma migrations

# Check if a migration name was provided
if (-not $args[0]) {
    Write-Host "Error: Please provide a migration name" -ForegroundColor Red
    Write-Host "Usage: ./create-migration.ps1 <migration-name>"
    exit 1
}

# Get the migration name from arguments
$MIGRATION_NAME = $args[0]

# Colors for output
$GREEN = "e[32m"
$YELLOW = "e[33m"
$RED = "e[31m"
$NC = "e[0m" # No Color

Write-Host "${YELLOW}Creating Database Migration: $MIGRATION_NAME${NC}"
Write-Host "===="
Write-Host ""

# Create the migration
Write-Host "${YELLOW}Creating migration...${NC}"
npx prisma migrate dev --name=$MIGRATION_NAME

if ($LASTEXITCODE -ne 0) {
    Write-Host "${RED}Failed to create migration.${NC}"
    exit 1
}

Write-Host "
${GREEN}Migration created successfully!${NC}"
