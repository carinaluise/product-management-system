Generated Routes
With this configuration, the following routes will be generated:

For products:

GET /products (index)
GET /products/:id (show)
GET /products/new (new)
POST /products (create)
GET /products/:id/edit (edit)
PATCH/PUT /products/:id (update)
DELETE /products/:id (destroy)
For subscribers (nested under products):

POST /products/:product_id/subscribers (create)
