from django.contrib import admin
from core.models import Category, Product, Item, OrderItems, Order


class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'parent', 'slug', 'created')
    list_filter = ['name', 'parent', 'created']
    search_fields = ['name']


class ProductAdmin(admin.ModelAdmin):
    list_display = ('name', 'category', 'code', 'created')
    list_filter = ['name', 'category', 'created']
    search_fields = ['name']


class ItemAdmin(admin.ModelAdmin):
    list_display = ('slug', 'product', 'created')
    list_filter = ['product', 'created']
    search_fields = ['product']


admin.site.register(Category, CategoryAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(Item, ItemAdmin)
admin.site.register(Order)
admin.site.register(OrderItems)
