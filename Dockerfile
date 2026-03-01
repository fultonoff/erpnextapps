FROM frappe/erpnext:v15.0.0

# Install custom apps
RUN install-app zatca_erpgulf https://github.com/ERPGulf/zatca_erpgulf
RUN install-app frappe_attachment_preview https://github.com/frappe/frappe_attachment_preview
RUN install-app drive https://github.com/frappe/drive
RUN install-app frappe_whatsapp https://github.com/frappe/frappe_whatsapp
RUN install-app insights https://github.com/frappe/insights
RUN install-app ecommerce_integrations https://github.com/frappe/ecommerce_integrations

# Finalize image
USER frappe