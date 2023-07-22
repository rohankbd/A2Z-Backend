from django.views.decorators.csrf import csrf_exempt
from rest_framework.decorators import api_view
from rest_framework.response import Response
from django.http import JsonResponse
from .models import *
from rest_framework import status
from .serializers import *
import googlemaps
from django.conf import settings
from math import radians, sin, cos, sqrt, atan2


@api_view(['POST'])
def create_dispatch_entry(request):
    service_id = request.data.get('service', {}).get('serviceId')
    customer_partner_id = request.data.get('Customer Partner', {}).get('id')
    customer_name = request.data.get('CustomerInfo', {}).get('name')
    customer_phone = request.data.get('CustomerInfo', {}).get('phone')
    customer_email = request.data.get('CustomerInfo', {}).get('email')
    make = request.data.get('assets', {}).get('make')
    model = request.data.get('assets', {}).get('model')
    color = request.data.get('assets', {}).get('color')
    year = request.data.get('assets', {}).get('year')
    street = request.data.get('location', {}).get('street')
    city = request.data.get('location', {}).get('city')
    state = request.data.get('location', {}).get('state')
    zip_code = request.data.get('location', {}).get('zip')
    longitude = request.data.get('location', {}).get('longitude')
    latitude = request.data.get('location', {}).get('latitude')
    address = request.data.get('location', {}).get('address')
    job_price = request.data.get('jobInfo', {}).get('price')

    dispatch_entry = DispatchEntry.objects.create(
        service_type_id=ServiceTypes.objects.get(service_type_id=service_id),
        customer_id=Customers.objects.create(name=customer_name, phone=customer_phone, email=customer_email),
        asset_id=DispatchEntryAssets.objects.create(make=make, model=model, colorid=color, model_year=year),
    )

    response_data = {
        "service": {"serviceId": service_id},
        "Customer Partner": {"id": customer_partner_id},
        "CustomerInfo": {"name": customer_name, "phone": customer_phone, "email": customer_email},
        "location": {"street": street, "city": city, "state": state, "zip": zip_code, "longitude": longitude, "latitude": latitude, "address": address},
        "assets": {"make": make, "model": model, "color": color, "year": year},
        "jobInfo": {"price": job_price}
    }
    return Response(response_data)

## Accounts API
@api_view(['GET', 'POST'])
def accounts_list(request):
    if request.method == 'GET':
        accounts = Accounts.objects.all()
        serializer = AccountsSerializer(accounts, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = AccountsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def accounts_detail(request, account_id):
    try:
        account = Accounts.objects.get(account_id=account_id)
    except Accounts.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = AccountsSerializer(account)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = AccountsSerializer(account, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        account.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## AccountTypes API
@api_view(['GET', 'POST'])
def account_types_list(request):
    if request.method == 'GET':
        account_types = AccountTypes.objects.all()
        serializer = AccountTypesSerializer(account_types, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = AccountTypesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def account_types_detail(request, account_type_id):
    try:
        account_type = AccountTypes.objects.get(account_type_id=account_type_id)
    except AccountTypes.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = AccountTypesSerializer(account_type)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = AccountTypesSerializer(account_type, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        account_type.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## Cases API
@api_view(['GET', 'POST'])
def cases_list(request):
    if request.method == 'GET':
        cases = Cases.objects.all()
        serializer = CasesSerializer(cases, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CasesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def cases_detail(request, case_id):
    try:
        cases = Cases.objects.get(case_id=case_id)
    except Cases.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = CasesSerializer(cases)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = CasesSerializer(cases, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        cases.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## Company API
@api_view(['GET', 'POST'])
def companies_list(request):
    if request.method == 'GET':
        companies = Company.objects.all()
        serializer = CompanySerializer(companies, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CompanySerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def companies_detail(request, company_id):
    try:
        company = Company.objects.get(company_id=company_id)
    except Company.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = CompanySerializer(company)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = CompanySerializer(company, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        company.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## CompanyFeatures API
@api_view(['GET', 'POST'])
def company_features_list(request):
    if request.method == 'GET':
        company_features = CompanyFeatures.objects.all()
        serializer = CompanyFeaturesSerializer(company_features, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CompanyFeaturesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def company_features_detail(request, feature_id):
    try:
        company_feature = CompanyFeatures.objects.get(feature_id=feature_id)
    except CompanyFeatures.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = CompanyFeaturesSerializer(company_feature)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = CompanyFeaturesSerializer(company_feature, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        company_feature.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## CompanyPricing API
@api_view(['GET', 'POST'])
def company_pricing_list(request):
    if request.method == 'GET':
        company_pricing = CompanyPricing.objects.all()
        serializer = CompanyPricingSerializer(company_pricing, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CompanyPricingSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def company_pricing_detail(request, pricing_id):
    try:
        company_pricing = CompanyPricing.objects.get(id=pricing_id)
    except CompanyPricing.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = CompanyPricingSerializer(company_pricing)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = CompanyPricingSerializer(company_pricing, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        company_pricing.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## Customers API
@api_view(['GET', 'POST'])
def customers_list(request):
    if request.method == 'GET':
        customers = Customers.objects.all()
        serializer = CustomersSerializer(customers, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CustomersSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def customers_detail(request, customer_id):
    try:
        customer = Customers.objects.get(customer_id=customer_id)
    except Customers.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = CustomersSerializer(customer)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = CustomersSerializer(customer, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        customer.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## CustomerFeedback API
@api_view(['GET', 'POST'])
def customer_feedback_list(request):
    if request.method == 'GET':
        feedbacks = CustomerFeedback.objects.all()
        serializer = CustomerFeedbackSerializer(feedbacks, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = CustomerFeedbackSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def customer_feedback_detail(request, feedback_id):
    try:
        feedback = CustomerFeedback.objects.get(id=feedback_id)
    except CustomerFeedback.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = CustomerFeedbackSerializer(feedback)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = CustomerFeedbackSerializer(feedback, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        feedback.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)    

## DispatchEntryAssets API
@api_view(['GET', 'POST'])
def dispatch_entry_assets_list(request):
    if request.method == 'GET':
        assets = DispatchEntryAssets.objects.all()
        serializer = DispatchEntryAssetsSerializer(assets, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = DispatchEntryAssetsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def dispatch_entry_assets_detail(request, asset_id):
    try:
        asset = DispatchEntryAssets.objects.get(asset_id=asset_id)
    except DispatchEntryAssets.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = DispatchEntryAssetsSerializer(asset)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = DispatchEntryAssetsSerializer(asset, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        asset.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## DispatchStatus API
@api_view(['GET', 'POST'])
def dispatch_status_list(request):
    if request.method == 'GET':
        statuses = DispatchStatus.objects.all()
        serializer = DispatchStatusSerializer(statuses, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = DispatchStatusSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def dispatch_status_detail(request, dispatch_status_id):
    try:
        status = DispatchStatus.objects.get(dispatch_status_id=dispatch_status_id)
    except DispatchStatus.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = DispatchStatusSerializer(status)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = DispatchStatusSerializer(status, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        status.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## DispatchStatusRecords API
@api_view(['GET', 'POST'])
def dispatch_entry_status_records_list(request):
    if request.method == 'GET':
        records = DispatchEntryStatusRecords.objects.all()
        serializer = DispatchEntryStatusRecordsSerializer(records, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = DispatchEntryStatusRecordsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def dispatch_entry_status_records_detail(request, record_id):
    try:
        record = DispatchEntryStatusRecords.objects.get(id=record_id)
    except DispatchEntryStatusRecords.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = DispatchEntryStatusRecordsSerializer(record)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = DispatchEntryStatusRecordsSerializer(record, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        record.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)

## Dispatch Entry API
@api_view(['GET', 'POST'])
def dispatch_entry_list(request):
    if request.method == 'GET':
        dispatch_entries = DispatchEntry.objects.all()
        serializer = DispatchEntrySerializer(dispatch_entries, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = DispatchEntrySerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def dispatch_entry_detail(request, entry_id):
    try:
        dispatch_entry = DispatchEntry.objects.get(dispatch_entry_id=entry_id)
    except DispatchEntry.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = DispatchEntrySerializer(dispatch_entry)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = DispatchEntrySerializer(dispatch_entry, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        dispatch_entry.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## DriverLocation API
@api_view(['GET', 'POST'])
def driver_location_list(request):
    if request.method == 'GET':
        locations = DriverLocation.objects.all()
        serializer = DriverLocationSerializer(locations, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = DriverLocationSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def driver_location_detail(request, location_id):
    try:
        location = DriverLocation.objects.get(driverLocation_id=location_id)
    except DriverLocation.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = DriverLocationSerializer(location)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = DriverLocationSerializer(location, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        location.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## Features API
@api_view(['GET', 'POST'])
def features_list(request):
    if request.method == 'GET':
        features = Features.objects.all()
        serializer = FeaturesSerializer(features, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = FeaturesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def features_detail(request, feature_id):
    try:
        feature = Features.objects.get(feature_id=feature_id)
    except Features.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = FeaturesSerializer(feature)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = FeaturesSerializer(feature, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        feature.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## Invoice API
@api_view(['GET', 'POST'])
def invoices_list(request):
    if request.method == 'GET':
        invoices = Invoices.objects.all()
        serializer = InvoicesSerializer(invoices, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = InvoicesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def invoices_detail(request, invoice_id):
    try:
        invoice = Invoices.objects.get(invoice_id=invoice_id)
    except Invoices.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = InvoicesSerializer(invoice)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = InvoicesSerializer(invoice, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        invoice.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## Payments API
@api_view(['GET', 'POST'])
def payments_list(request):
    if request.method == 'GET':
        payments = Payments.objects.all()
        serializer = PaymentsSerializer(payments, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = PaymentsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def payments_detail(request, payment_id):
    try:
        payment = Payments.objects.get(payment_id=payment_id)
    except Payments.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = PaymentsSerializer(payment)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = PaymentsSerializer(payment, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        payment.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## RateItem API
@api_view(['GET', 'POST'])
def rate_items_list(request):
    if request.method == 'GET':
        rate_items = RateItem.objects.all()
        serializer = RateItemSerializer(rate_items, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = RateItemSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def rate_items_detail(request, rate_item_id):
    try:
        rate_item = RateItem.objects.get(rate_item_id=rate_item_id)
    except RateItem.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = RateItemSerializer(rate_item)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = RateItemSerializer(rate_item, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        rate_item.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## Reasons API
@api_view(['GET', 'POST'])
def reasons_list(request):
    if request.method == 'GET':
        reasons = Reasons.objects.all()
        serializer = ReasonsSerializer(reasons, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = ReasonsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def reasons_detail(request, reason_id):
    try:
        reason = Reasons.objects.get(reason_id=reason_id)
    except Reasons.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = ReasonsSerializer(reason)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = ReasonsSerializer(reason, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        reason.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## ServiceProvider API
# @api_view(['GET', 'POST'])
# def service_providers_list(request):
#     if request.method == 'GET':
#         service_providers = ServiceProvider.objects.all()
#         serializer = ServiceProviderSerializer(service_providers, many=True)
#         return Response(serializer.data)

#     elif request.method == 'POST':
#         serializer = ServiceProviderSerializer(data=request.data)
#         if serializer.is_valid():
#             serializer.save()
#             return Response(serializer.data, status=status.HTTP_201_CREATED)
#         return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

# @api_view(['GET', 'PUT', 'DELETE'])
# def service_provider_detail(request, provider_id):
#     try:
#         service_provider = ServiceProvider.objects.get(service_provider_id=provider_id)
#     except ServiceProvider.DoesNotExist:
#         return Response(status=status.HTTP_404_NOT_FOUND)

#     if request.method == 'GET':
#         serializer = ServiceProviderSerializer(service_provider)
#         return Response(serializer.data)

#     elif request.method == 'PUT':
#         serializer = ServiceProviderSerializer(service_provider, data=request.data)
#         if serializer.is_valid():
#             serializer.save()
#             return Response(serializer.data)
#         return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

#     elif request.method == 'DELETE':
#         service_provider.delete()
#         return Response(status=status.HTTP_204_NO_CONTENT)
    
## ServiceTypes API
@api_view(['GET', 'POST'])
def service_types_list(request):
    if request.method == 'GET':
        service_types = ServiceTypes.objects.all()
        serializer = ServiceTypesSerializer(service_types, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = ServiceTypesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def service_types_detail(request, type_id):
    try:
        service_type = ServiceTypes.objects.get(service_type_id=type_id)
    except ServiceTypes.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = ServiceTypesSerializer(service_type)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = ServiceTypesSerializer(service_type, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        service_type.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## SystemUser API
@api_view(['GET', 'POST'])
def system_users_list(request):
    if request.method == 'GET':
        system_users = SystemUser.objects.all()
        serializer = SystemUserSerializer(system_users, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = SystemUserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def system_users_detail(request, csr_id):
    try:
        system_user = SystemUser.objects.get(csr_id=csr_id)
    except SystemUser.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = SystemUserSerializer(system_user)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = SystemUserSerializer(system_user, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        system_user.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
## SystemUserStatusRecords API
@api_view(['GET', 'POST'])
def user_status_records_list(request):
    if request.method == 'GET':
        user_status_records = SystemUserStatusRecords.objects.all()
        serializer = SystemUserStatusRecordsSerializer(user_status_records, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = SystemUserStatusRecordsSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def user_status_records_detail(request, record_id):
    try:
        user_status_record = SystemUserStatusRecords.objects.get(id=record_id)
    except SystemUserStatusRecords.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)

    if request.method == 'GET':
        serializer = SystemUserStatusRecordsSerializer(user_status_record)
        return Response(serializer.data)

    elif request.method == 'PUT':
        serializer = SystemUserStatusRecordsSerializer(user_status_record, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    elif request.method == 'DELETE':
        user_status_record.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)    



## Vehicles API
@api_view(['GET', 'POST'])
def vehicles_list(request):
    if request.method == 'GET':
        vehicles = Vehicles.objects.all()
        serializer = VehiclesSerializer(vehicles, many=True)
        return Response(serializer.data)
    
    elif request.method == 'POST':
        serializer = VehiclesSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

@api_view(['GET', 'PUT', 'DELETE'])
def vehicles_detail(request, vehicle_id):
    try:
        vehicle = Vehicles.objects.get(vehicle_id=vehicle_id)
    except Vehicles.DoesNotExist:
        return Response(status=status.HTTP_404_NOT_FOUND)
    
    if request.method == 'GET':
        serializer = VehiclesSerializer(vehicle)
        return Response(serializer.data)
    
    elif request.method == 'PUT':
        serializer = VehiclesSerializer(vehicle, data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    
    elif request.method == 'DELETE':
        vehicle.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    
def haversine(lat1, lon1, lat2, lon2):
    lat1, lon1, lat2, lon2 = map(radians, [lat1, lon1, lat2, lon2])

    radius = 6371

    dlat = lat2 - lat1
    dlon = lon2 - lon1
    a = sin(dlat / 2) ** 2 + cos(lat1) * cos(lat2) * sin(dlon / 2) ** 2
    c = 2 * atan2(sqrt(a), sqrt(1 - a))
    distance = radius * c

    return distance

@api_view(['GET'])
def nearby_drivers(request):
    pickup_latitude = request.GET.get('pickup_latitude')
    pickup_longitude = request.GET.get('pickup_longitude')
    distance = 2

    if pickup_latitude and pickup_longitude and distance:
        gmaps = googlemaps.Client(key=settings.GOOGLE_MAPS_API_KEY)

        nearby_drivers = []
        for driver in Company.objects.all():
            driver_latitude = driver.latitude
            driver_longitude = driver.longitude

            dist = haversine(float(pickup_latitude), float(pickup_longitude), driver_latitude, driver_longitude)

            if dist <= float(distance):
                nearby_drivers.append(driver)

        serializer = CompanySerializer(nearby_drivers, many=True)
        return Response(serializer.data)

    return Response([])
    
# @api_view(['POST'])
# def create_customer(request):
#     name = request.data.get('name')
#     email = request.data.get('email')
#     phone_number = request.data.get('phone_number')
#     whatsapp_number = request.data.get('whatsapp_number')

#     if not all([name, email, phone_number, whatsapp_number]):
#         return Response({'error': 'Missing required fields'}, status=400)

#     customer = Customers(
#         name=name,
#         email=email,
#         phone_number=phone_number,
#         whatsapp_number=whatsapp_number
#     )
#     customer.save()

#     return Response({'message': 'Customer created successfully'}, status=201)

# @api_view(['POST'])
# def create_service(request):
#     service_type = request.data.get('service_type')
#     name = request.data.get('name')

#     if not all([service_type, name]):
#         return Response({'error': 'Missing required fields'}, status=400)

#     service = ServiceTypes(service_type=service_type, name=name)
#     service.save()

#     return Response({'message': 'Service created successfully'}, status=201)


# @csrf_exempt
# def create_dispatch_entry(request):
#     if request.method == 'POST':
#         data = request.POST

#         service_id = data.get('service.serviceId')
#         customer_id = data.get('Customer Partner.id')
#         customer_name = data.get('CustomerInfo.name')
#         phone = data.get('CustomerInfo.phone')
#         email = data.get('CustomerInfo.email')
#         device = data.get('CustomerInfo.device')
#         street = data.get('location.street')
#         city = data.get('location.city')
#         state = data.get('location.state')
#         zip_code = data.get('location.zip')
#         longitude = data.get('location.longitude')
#         latitude = data.get('location.latitude')
#         address = data.get('location.address')
#         make = data.get('make')
#         model = data.get('model')
#         color = data.get('color')
#         year = data.get('year')
#         price = data.get('jobInfo.price')

#         dispatch_entry = DispatchEntry.objects.create(
#             service_id=service_id,
#             customer_id=customer_id,
#             customer_name=customer_name,
#             phone=phone,
#             email=email,
#             device=device,
#             street=street,
#             city=city,
#             state=state,
#             zip_code=zip_code,
#             longitude=longitude,
#             latitude=latitude,
#             address=address,
#             make=make,
#             model=model,
#             color=color,
#             year=year,
#             price=price
#         )
#         return JsonResponse({'message': 'DispatchEntry created successfully.'}, status=201)
#     return JsonResponse({'error': 'Invalid request method.'}, status=400)