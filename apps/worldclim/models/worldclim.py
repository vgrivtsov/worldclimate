from django.db import models


class City(models.Model):

    name = models.CharField("Name", max_length=140)

    def __str__(self):
        return self.name

class Climate(models.Model):
    date_time = models.DateField()
    temp = models.IntegerField(blank=True, null=True)
    press = models.DecimalField(blank=True, null=True, max_digits=5, decimal_places=2)
    hum = models.PositiveIntegerField(blank=True, null=True)
    city = models.ForeignKey(City, on_delete=models.CASCADE, blank=True, null=True)
