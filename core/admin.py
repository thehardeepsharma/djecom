from django.contrib import admin
from core.models import Item, OrderItems, Order

admin.site.register(Item)
admin.site.register(Order)
admin.site.register(OrderItems)

