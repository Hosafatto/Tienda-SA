Param(
    [switch]$InstallBrowsers
)

Write-Host "== Tienda-SA setup (PowerShell) =="

Write-Host "Installing npm dependencies..."
npm install

Write-Host "Initializing Tailwind CSS config (if missing)..."
if (-not (Test-Path tailwind.config.js)) {
    npx tailwindcss init -p
} else {
    Write-Host "tailwind.config.js already exists, skipping." 
}

Write-Host "Generating Prisma client (if Prisma configured)..."
if (Get-Command npx -ErrorAction SilentlyContinue) {
    npx prisma generate 2>$null | Out-Null
}

if ($InstallBrowsers) {
    Write-Host "Installing Playwright browsers..."
    npx playwright install
}

if (-not (Test-Path .env)) {
    if (Test-Path .env.example) {
        Copy-Item .env.example .env
        Write-Host "Created .env from .env.example — edit DATABASE_URL before running migrations."
    } else {
        Write-Host ".env.example not found. Create .env manually with DATABASE_URL." 
    }
} else {
    Write-Host ".env already exists — not overwriting."
}

Write-Host "Setup complete. Start the dev server with: npm run dev"
