from django.urls import path
from A2Zbackend import views
from .views import *
from django.urls import re_path

app_name = 'A2Zbackend'
urlpatterns = [
    # path('create-customers/', views.create_customer),
    # path('create-service/', views.create_service),
    
    path('create-dispatch-entry/', views.create_dispatch_entry),
    
    #path('nearby-drivers/', nearby_drivers_api, name='nearby-drivers'),
    
    path('accounts/', views.accounts_list),
    path('accounts/<int:account_id>/', views.accounts_detail),
    
    path('account-types/', views.account_types_list),
    path('account-types/<int:account_type_id>/', views.account_types_detail),
    
    path('cases/', views.cases_list),
    path('cases/<int:case_id>/', views.cases_detail),
    
    path('companies/', views.companies_list),
    path('companies/<int:company_id>/', views.companies_detail),
    
    path('company-features/', views.company_features_list),
    path('company-features/<int:feature_id>/', views.company_features_detail),
    
    path('company-pricing/', views.company_pricing_list),
    path('company-pricing/<int:pricing_id>/', views.company_pricing_detail),
    
    path('customers/', views.customers_list),
    path('customers/<int:customer_id>/', views.customers_detail),
    
    path('customer-feedback/', views.customer_feedback_list),
    path('customer-feedback/<int:feedback_id>/', views.customer_feedback_detail),
    
    path('dispatch-entry-assets/', views.dispatch_entry_assets_list),
    path('dispatch-entry-assets/<int:asset_id>/', views.dispatch_entry_assets_detail),
    
    path('dispatch-status/', views.dispatch_status_list),
    path('dispatch-status/<int:dispatch_status_id>/', views.dispatch_status_detail),
    
    path('entry-status-records/', views.dispatch_entry_status_records_list),
    path('entry-status-records/<int:record_id>/', views.dispatch_entry_status_records_detail),

    path('dispatch_entries/', dispatch_entry_list, name='dispatch-entry-list'),
    path('dispatch_entries/<int:entry_id>/', dispatch_entry_detail, name='dispatch-entry-detail'),

    path('driver-locations/', views.driver_location_list),
    path('driver-locations/<int:location_id>/', views.driver_location_detail),
    
    path('features/', views.features_list),
    path('features/<int:feature_id>/', views.features_detail),
    
    path('invoices/', views.invoices_list),
    path('invoices/<int:invoice_id>/', views.invoices_detail),
    
    path('payments/', views.payments_list),
    path('payments/<int:payment_id>/', views.payments_detail),

    path('rate-items/', views.rate_items_list),
    path('rate-items/<int:rate_item_id>/', views.rate_items_detail),
    
    path('reasons/', views.reasons_list),
    path('reasons/<int:reason_id>/', views.reasons_detail),
    
    # path('service-providers/', views.service_providers_list),
    # path('service-providers/<int:provider_id>/', views.service_provider_detail),
    
    path('service-types/', views.service_types_list),
    path('service-types/<int:type_id>/', views.service_types_detail),
    
    path('system-users/', views.system_users_list),
    path('system-users/<int:csr_id>/', views.system_users_detail),
    
    path('user-status-records/', views.user_status_records_list),
    path('user-status-records/<int:record_id>/', views.user_status_records_detail),
    
    path('vehicles/', views.vehicles_list),
    path('vehicles/<int:vehicle_id>/', views.vehicles_detail),
    
    path('drivers/nearby/', views.nearby_drivers),
    
]