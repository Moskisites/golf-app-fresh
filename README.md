# Golf App

A web application for tracking golf courses and rounds.

## Features

- Track golf courses
- Record golf rounds
- View statistics

## Development

### Prerequisites

- Node.js
- npm
- PostgreSQL database

### Setup

1. Clone the repository
2. Install dependencies: \
pm install\
3. Create a \.env\ file with your database connection string
4. Run the development server: \
pm run dev\

### Database Migrations

- Create a migration: \
pm run create-migration <migration-name>\
- Deploy migrations: \
pm run deploy:db\

## Deployment

This application is configured for deployment on Vercel.

1. Push to GitHub
2. Connect to Vercel
3. Set up environment variables
4. Deploy

git add .gitignore README.md
