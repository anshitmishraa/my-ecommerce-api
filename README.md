# My E-Commerce API

Welcome to My E-Commerce API documentation. This API allows you to manage products in a fictional e-commerce website.

## Base URL

All URLs referenced in this documentation have the following base:

`http://localhost:8000/`

## Authentication

This API does not require any authentication to access.

## Error Handling

This API returns error responses in JSON format. The response includes an error message and an HTTP status code. The HTTP status code indicates the type of error that occurred.

Here is an example of an error response:

```
{
  "error": "Product not found."
}
```


## Endpoints

### GET /products

Returns a list of all products in the e-commerce website.

#### Example Request

GET `http://localhost:8000//products`

#### Example Response
```
[
    {
        "id": 1,
        "name": "Product 1",
        "description": "This is product 1.",
        "price": 110.99,
        "created_at": "2023-02-25T07:52:21.000000Z",
        "updated_at": "2023-02-25T07:57:40.000000Z"
    },
    {
        "id": 2,
        "name": "Product 2",
        "description": "This is product 2.",
        "price": 19.99,
        "created_at": "2023-02-25T07:53:01.000000Z",
        "updated_at": "2023-02-25T07:53:01.000000Z"
    },
    {
        "id": 4,
        "name": "Product 1",
        "description": "Product 1 description",
        "price": 10.99,
        "created_at": "2023-02-25T08:01:02.000000Z",
        "updated_at": "2023-02-25T08:01:02.000000Z"
    },
    {
        "id": 5,
        "name": "Product 2",
        "description": "Product 2 description",
        "price": 20.99,
        "created_at": "2023-02-25T08:01:02.000000Z",
        "updated_at": "2023-02-25T08:01:02.000000Z"
    },
    {
        "id": 6,
        "name": "Product 3",
        "description": "Product 3 description",
        "price": 5.99,
        "created_at": "2023-02-25T08:01:02.000000Z",
        "updated_at": "2023-02-25T08:01:02.000000Z"
    }
]
```

### GET /products/{id}

Returns a single product from the e-commerce website.

#### Example Request

GET http://localhost:8000/products/1

#### Example Response

```
{
    "id": 1,
    "name": "Product 1",
    "description": "This is product 1.",
    "price": 110.99,
    "created_at": "2023-02-25T07:52:21.000000Z",
    "updated_at": "2023-02-25T07:57:40.000000Z"
}
```

### POST /products

Creates a new product in the e-commerce website.

#### Example Request

POST `http://localhost:8000/products`
Content-Type: application/json
```
{
"name": "Product 3",
"description": "This is the description for Product 3.",
"price": 11.99
}
```

#### Example Response
```
{
    "id": 3,
    "name": "Product 3",
    "description": "This is the description for Product 3.",
    "price": 11.99,
    "created_at": "2022-02-03T12:00:00.000000Z",
    "updated_at": "2022-02-03T12:00:00.000000Z"
}
```

### PUT /products/{id}

Updates an existing product in the e-commerce website.

#### Example Request

PUT `http://localhost:8000/products/3`
Content-Type: application/json
```
{
    "description": "This is the updated description for Product 3.",
    "price": 12.99
}
```

#### Example Response
```
{
    "id": 3,
    "name": "Product 3",
    "description": "This is the updated description for Product 3.",
    "price": 12.99
}
```
