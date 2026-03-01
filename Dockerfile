FROM frappe/erpnext:v15.0.0

USER frappe
WORKDIR /home/frappe/frappe-bench

# Install custom apps
RUN bench get-app --resolve-deps https://github.com/frappe/frappe_attachment_preview
RUN bench get-app --resolve-deps https://github.com/frappe/drive
RUN bench get-app --resolve-deps https://github.com/frappe/frappe_whatsapp
RUN bench get-app --resolve-deps https://github.com/frappe/insights
RUN bench get-app --resolve-deps https://github.com/frappe/ecommerce_integrations

# Finalize image
# Note: Apps are installed in the image, but you still need to 
# run 'bench --site your-site install-app app_name' after deployment.