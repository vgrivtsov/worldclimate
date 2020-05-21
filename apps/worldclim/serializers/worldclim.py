from rest_framework import serializers, fields
from apps.worldclim.models.worldclim import City, Climate


class CitySerializer(serializers.ModelSerializer):
    class Meta:
        model = City
        fields = '__all__'


class ClimateSerializer(serializers.ModelSerializer):
    date_time = serializers.DateField(allow_null=True)
    #city = serializers.RelatedField(many=True, read_only=True)
    class Meta:
        model = Climate
        fields = '__all__'
