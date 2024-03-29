from django.db import models
from django.shortcuts import reverse
from django.contrib.auth.models import User

CATEGORY_CHOICE = (
    ('BD', 'Box Dumper'),
    ('CA', 'Cabinets'),
    ('CR', 'Cranes'),
)

LABEL_CHOICE = (
    ('P', 'Primary'),
    ('S', 'Secondary'),
    ('D', 'Danger'),
)


class Item(models.Model):
    title = models.CharField(max_length=100)
    price = models.FloatField()
    discount_price = models.FloatField()
    category = models.CharField(max_length=2, choices=CATEGORY_CHOICE)
    label = models.CharField(max_length=1, choices=LABEL_CHOICE)
    slug = models.SlugField()
    description = models.TextField(null=True, blank=True)

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse("core:product", kwargs={'slug': self.slug})

    def get_add_to_cart_url(self):
        return reverse("core:add_to_cart", kwargs={'slug': self.slug})


class OrderItems(models.Model):
    item = models.ForeignKey(Item, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)

    def __str__(self):
        return self.title


class Order(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    items = models.ManyToManyField(OrderItems)
    start_date = models.DateTimeField(auto_now_add=True)
    ordered_date = models.DateTimeField()
    ordered = models.BooleanField(default=False)

    def __str__(self):
        return self.user.username

