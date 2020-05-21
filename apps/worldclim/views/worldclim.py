from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework import generics
from datetime import datetime, timedelta

from apps.worldclim.models import City, Climate
from apps.worldclim.serializers import CitySerializer, ClimateSerializer


class CityList(generics.ListAPIView):
    """
    Get city list
    """
    serializer_class = CitySerializer
    model = serializer_class.Meta.model

    def list(self, request):
        queryset = self.model.objects.all()
        serializer = CitySerializer(queryset, many=True)
        return Response(serializer.data)

class ClimateData(generics.ListAPIView):
    serializer_class = ClimateSerializer
    model = serializer_class.Meta.model

    def get(self, request):
        """
        Get climate data

        request:
            city_id : [int]
            startdate : date
            enddate : date
        response:
            [{'city_name': str,
               'data': [{'temp' : [int], 'unit': str},
                        {'press' : [float], 'unit': str},
                        {'hum' : [int], 'unit': str}
                       ],
               'date': [date]
             }]
        """
        city_id = self.request.query_params.get('city', None)
        city_id = city_id.split(',')

        startdate = self.request.query_params.get('startdate', None)
        enddate = self.request.query_params.get('enddate', None)
        startdate = datetime.strptime(startdate, '%Y-%m-%d')
        enddate = datetime.strptime(enddate, '%Y-%m-%d')
        daterange_raw = [startdate + timedelta(days=x) for x in range(0, (enddate-startdate).days)]
        daterange = [x.strftime('%Y-%m-%d') for x in daterange_raw]

        result = {}
        result['data'] = []

        for c in city_id:
            city = City.objects.get(id=c).name
            data = {}
            data['city_name'] = city
            queryset = self.model.objects.filter(city=c)
            data['temp'] = [city] +  list(queryset.values_list('temp', flat=True))
            data['press'] = queryset.values_list('press', flat=True)
            data['hum'] = queryset.values_list('hum', flat=True)

            result['data'].append(data)
        result['daterange'] = daterange

        return Response(result)
