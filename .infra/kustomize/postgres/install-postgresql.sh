#!/bin/sh

# Add the Bitnami Helm chart repository
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

# Install or upgrade PostgreSQL with the global auth settings
helm upgrade --install odoo-postgresql bitnami/postgresql \
    --set persistence.existingClaim=postgresql-pv-claim \
    --set volumePermissions.enabled=true \
    --set global.postgresql.auth.password=odoo \
    --set global.postgresql.auth.username=nathan \
    --set global.postgresql.auth.database=odoo-db