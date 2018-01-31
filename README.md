A simple api for testing front-end apps.

# Host
https://sontd-api.herokuapp.com

# Table of content
| Name | Verb | URI Pattern | params |
|---|---|---|---|
| Root | GET | `/` |  |
| Get list products | GET | `/api/v1/products` |  |
| Create product | POST |   `/api/v1/products` | `{'product': {'name': '', 'price': '', 'manufacturer_id': '', 'image': '', 'description': '',}}` |
| Get product details | GET | `/api/v1/products/:id` |  |
| Update product | PUT |    `/api/v1/products/:id` |  `{'product': {'name': '', 'price': '', 'manufacturer_id': '', 'image': '', 'description': '',}}` |
| Destroy product | DELETE | `/api/v1/products/:id` |  |
| Get list manufacturers | GET | `/api/v1/manufacturers` |  |
