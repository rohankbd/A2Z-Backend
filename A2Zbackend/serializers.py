from rest_framework import serializers
from .models import *
from django.contrib.auth.models import User

class AccountsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Accounts
        fields = '__all__'

class AccountTypesSerializer(serializers.ModelSerializer):
    class Meta:
        model = AccountTypes
        fields = '__all__'

class CasesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cases
        fields = '__all__'
        
class CompanySerializer(serializers.ModelSerializer):
    class Meta:
        model = Company
        fields = '__all__'
        
class CompanyFeaturesSerializer(serializers.ModelSerializer):
    class Meta:
        model = CompanyFeatures
        fields = '__all__'
        
class CompanyPricingSerializer(serializers.ModelSerializer):
    class Meta:
        model = CompanyPricing
        fields = '__all__'

class CustomersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Customers
        fields = '__all__'
        
class CustomerFeedbackSerializer(serializers.ModelSerializer):
    class Meta:
        model = CustomerFeedback
        fields = '__all__'

class DispatchEntryAssetsSerializer(serializers.ModelSerializer):
    class Meta:
        model = DispatchEntryAssets
        fields = '__all__'
        
class DispatchStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = DispatchStatus
        fields = '__all__'
        
class DispatchEntryStatusRecordsSerializer(serializers.ModelSerializer):
    class Meta:
        model = DispatchEntryStatusRecords
        fields = '__all__'

class DispatchEntrySerializer(serializers.ModelSerializer):
    class Meta:
        model = DispatchEntry
        fields = '__all__'
        
class DriverLocationSerializer(serializers.ModelSerializer):
    class Meta:
        model = DriverLocation
        fields = '__all__'
        
class FeaturesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Features
        fields = '__all__'
        
class InvoicesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Invoices
        fields = '__all__'
        
class PaymentsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Payments
        fields = '__all__'
        
class RateItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = RateItem
        fields = '__all__'
        
class ReasonsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Reasons
        fields = '__all__'
        
# class ServiceProviderSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = ServiceProvider
#         fields = '__all__'
        
class ServiceTypesSerializer(serializers.ModelSerializer):
    class Meta:
        model = ServiceTypes
        fields = '__all__'
        
class SystemUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = SystemUser
        fields = '__all__'
        
class SystemUserStatusRecordsSerializer(serializers.ModelSerializer):
    class Meta:
        model = SystemUserStatusRecords
        fields = '__all__'
        
# class UserSerializer(serializers.ModelSerializer):
#     class Meta(object):
#         model = User 
#         fields = ['id', 'username', 'password', 'email']

class VehiclesSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vehicles
        fields = '__all__'