# Database
DATABASE_URL=postgresql+asyncpg://postgres:postgres@localhost:5432/smashr

# JWT
SECRET_KEY=your-secret-key-here
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=15
REFRESH_TOKEN_EXPIRE_DAYS=30

# LOGGER
LOG_LEVEL=info
LOG_OUTPUT=console
LOG_FORMAT=text_light
LOG_FILE=

# SMTP
SMTP_HOST=your-smtp-host
SMTP_PORT=587
SMTP_USE_TLS=True
SMTP_USERNAME=your-smtp-username
SMTP_PASSWORD=your-smtp-password
SMTP_DEFAULT_FROM=Trottr <noreply@trottr.io>

# BASE URL
BASE_URL=https://domain.tld/api
BASE_URL_EMAIL=https://domain.tld

# WORKERS
HTTP_WORKERS

# Preview Access
MODE_PREVIEW=False
MODE_PREVIEW_NOTIF_EMAIL=

# Data
DATA_PATH=../.data

# DEBUG
DEBUG_ADMIN=False

# Recaptcha
RECAPTCHA_ENABLED=False
RECAPTCHA_SITE_KEY=
RECAPTCHA_SECRET_KEY=
RECAPTCHA_MIN_SCORE=0.5
