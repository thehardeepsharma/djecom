from django.shortcuts import render, redirect, get_object_or_404
from django.views.generic import ListView, DetailView
from .models import Item, OrderItems, Order


class ProductListView(ListView):
    model = Item
    template_name = "list.html"


class HomeView(ListView):
    model = Item
    template_name = "home.html"


class ItemDetailView(DetailView):
    model = Item
    template_name = "product.html"


class Checkout(ListView):
    model = Item
    template_name = "checkout.html"


def add_to_cart(request, slug):
    item = get_object_or_404(Item, slug=slug)
    order_item = OrderItems.objects.create(item)
    order_qs = Order.objects.filter(user=request.user, ordered=False)
    if order_qs.exists():
        order = order_qs[0]
        if order.items.filter(item__slug=slug).exists():
            order_item.quantity += 1
            order_item.save()
    else:
        order = Order.objects.create(uset=request.user)
        order.items.add(order_item)

    return redirect("core:product", kwargs={'slug': slug})


