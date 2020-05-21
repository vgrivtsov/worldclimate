from django.urls import path

from apps.worldclim import views

app_name = "worldclim"
urlpatterns = [
    path("cities/", views.CityList.as_view(), name="cities"),
    path("climatedata/", views.ClimateData.as_view(), name="climatedata"),
]
