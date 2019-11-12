from django.urls import path
from .views import HomeView, ItemDetailView, ProductListView, Checkout, add_to_cart

app_name = 'core'

urlpatterns = [
    path('', HomeView.as_view(), name='home'),
    path('products/', ProductListView.as_view(), name='products'),
    path('product/<slug>/', ItemDetailView.as_view(), name='product_detail'),
    path('checkout/', Checkout.as_view(), name='checkout'),
    path('add_to_cart/<slug>/', add_to_cart, name='add_to_cart'),
]

