# Tienda-SA

Resumen de cambios realizados:

- Se creó y añadió un archivo `.gitignore` genérico en la raíz del proyecto.
- Se actualizaron las reglas de `.gitignore` para soportar el stack elegido:
  - Next.js
  - TypeScript
  - Playwright
  - Prisma
  - PostgreSQL
  - Tailwind CSS
- El usuario confirmó que la versión actual es adecuada (no añadir Vercel/Docker/CI).

Archivos clave

- `.gitignore` — Reglas genéricas y específicas para el stack.

Siguientes pasos sugeridos (opcionales)

- Inicializar el repositorio Git e hacer el primer commit:

```bash
git init
git add .
git commit -m "chore: add .gitignore and README"
```

- Instalar dependencias y configurar el esqueleto del proyecto (Next.js + TypeScript):

```bash
npm install next react react-dom
npm install -D typescript @types/react @types/node
```

- Configurar Prisma y la base de datos PostgreSQL, y ejecutar `prisma migrate` cuando corresponda.

Si quieres que adapte el `README` con instrucciones de arranque, scripts o despliegue, dímelo y lo extiendo.

Uso y arranque

1) Instalar dependencias básicas (Next.js + React + TypeScript):

```bash
npm install next react react-dom
npm install -D typescript @types/react @types/node
```

2) Dependencias útiles (Prisma, Tailwind, Playwright, Prettier):

```bash
npm install prisma @prisma/client tailwindcss postcss autoprefixer
npm install -D playwright @playwright/test prettier
npx tailwindcss init -p
```

3) Scripts disponibles (en `package.json`):

- `npm run dev` — iniciar Next.js en modo desarrollo.
- `npm run build` — construir la aplicación para producción.
- `npm run start` — ejecutar la aplicación en producción.
- `npm run lint` — ejecutar linter (si está configurado).
- `npm run typecheck` — ejecutar `tsc --noEmit`.
- `npm run prisma:generate` — generar cliente Prisma.
- `npm run prisma:migrate` — ejecutar migraciones de Prisma (modo desarrollo).
- `npm run playwright:install` — instalar navegadores de Playwright.
- `npm run playwright:test` — ejecutar pruebas de Playwright.
- `npm run format` — formatear el código con Prettier.

Notas sobre la base de datos

- Configura la URL de PostgreSQL en `DATABASE_URL` en `.env` antes de ejecutar Prisma.

Si quieres que cree un `setup.sh` o añada comandos para Windows/PowerShell, lo agrego.

Script de setup (PowerShell)

Hay un script de ayuda `setup.ps1` en la raíz para entornos Windows (PowerShell). Ejecuta lo siguiente desde la raíz del proyecto:

```powershell
.\setup.ps1 -InstallBrowsers
```

El script realiza:

- `npm install`
- Inicializa Tailwind (`npx tailwindcss init -p`) si no existe `tailwind.config.js`.
- Genera el cliente Prisma (`npx prisma generate`) si Prisma está configurado.
- Opcionalmente instala navegadores de Playwright si se pasa el flag `-InstallBrowsers`.
- Copia `.env.example` a `.env` si no existe `.env`.

.env example

Incluí un archivo de ejemplo `.env.example` en la raíz. Antes de ejecutar migraciones o iniciar la app, actualiza `DATABASE_URL` con tu cadena de conexión a PostgreSQL y guarda una copia en `.env`.

# Tienda-SA
Tienda de la esquina.
