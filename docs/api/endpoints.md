---
title: Endpoints
---

# Endpoints

Detailed documentation for all API endpoints.

---

## Users

### List Users

Retrieve a paginated list of all users.

```
GET /users
```

#### Parameters

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `page` | integer | No | Page number (default: 1) |
| `limit` | integer | No | Items per page (default: 20, max: 100) |
| `sort` | string | No | Sort field: `name`, `created_at` |
| `order` | string | No | Sort order: `asc`, `desc` |

#### Example Request

```bash
curl -X GET "https://api.example.com/v1/users?page=1&limit=10" \
     -H "Authorization: Bearer YOUR_API_KEY"
```

#### Example Response

```json
{
  "success": true,
  "data": [
    {
      "id": 1,
      "name": "John Doe",
      "email": "john@example.com",
      "created_at": "2024-01-15T10:30:00Z"
    },
    {
      "id": 2,
      "name": "Jane Smith",
      "email": "jane@example.com",
      "created_at": "2024-01-14T09:15:00Z"
    }
  ],
  "meta": {
    "page": 1,
    "limit": 10,
    "total": 42,
    "pages": 5
  }
}
```

---

### Create User

Create a new user.

```
POST /users
```

#### Request Body

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | Yes | User's full name |
| `email` | string | Yes | Unique email address |
| `password` | string | Yes | Min 8 characters |
| `role` | string | No | User role (default: `user`) |

#### Example Request

```bash
curl -X POST "https://api.example.com/v1/users" \
     -H "Authorization: Bearer YOUR_API_KEY" \
     -H "Content-Type: application/json" \
     -d '{
       "name": "Alice Johnson",
       "email": "alice@example.com",
       "password": "secure_password_123"
     }'
```

#### Example Response

```json
{
  "success": true,
  "data": {
    "id": 3,
    "name": "Alice Johnson",
    "email": "alice@example.com",
    "role": "user",
    "created_at": "2024-01-16T14:22:00Z"
  }
}
```

!!! warning "Password Security"
    Never log or expose passwords. They are hashed before storage.

---

### Get User

Retrieve a single user by ID.

```
GET /users/{id}
```

#### Path Parameters

| Name | Type | Description |
|------|------|-------------|
| `id` | integer | User ID |

#### Example Request

```bash
curl -X GET "https://api.example.com/v1/users/1" \
     -H "Authorization: Bearer YOUR_API_KEY"
```

#### Example Response

```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com",
    "role": "admin",
    "created_at": "2024-01-15T10:30:00Z",
    "updated_at": "2024-01-16T08:45:00Z"
  }
}
```

#### Errors

| Code | Message |
|------|---------|
| `404` | User not found |

---

### Update User

Update an existing user.

```
PUT /users/{id}
```

#### Path Parameters

| Name | Type | Description |
|------|------|-------------|
| `id` | integer | User ID |

#### Request Body

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| `name` | string | No | User's full name |
| `email` | string | No | Unique email address |
| `role` | string | No | User role |

#### Example Request

```bash
curl -X PUT "https://api.example.com/v1/users/1" \
     -H "Authorization: Bearer YOUR_API_KEY" \
     -H "Content-Type: application/json" \
     -d '{
       "name": "John D. Doe",
       "role": "moderator"
     }'
```

#### Example Response

```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "John D. Doe",
    "email": "john@example.com",
    "role": "moderator",
    "created_at": "2024-01-15T10:30:00Z",
    "updated_at": "2024-01-16T15:00:00Z"
  }
}
```

---

### Delete User

Delete a user.

```
DELETE /users/{id}
```

!!! danger "Irreversible"
    This action cannot be undone. All user data will be permanently deleted.

#### Path Parameters

| Name | Type | Description |
|------|------|-------------|
| `id` | integer | User ID |

#### Example Request

```bash
curl -X DELETE "https://api.example.com/v1/users/1" \
     -H "Authorization: Bearer YOUR_API_KEY"
```

#### Example Response

```json
{
  "success": true,
  "message": "User deleted successfully"
}
```

---

## Error Codes

### Common Errors

| Code | Message | Solution |
|------|---------|----------|
| `INVALID_API_KEY` | API key is invalid | Check your API key |
| `RATE_LIMITED` | Too many requests | Wait and retry |
| `VALIDATION_ERROR` | Invalid input | Check request body |
| `NOT_FOUND` | Resource not found | Verify the ID exists |
| `FORBIDDEN` | Access denied | Check permissions |

### Handling Errors

```python
from example import Client, APIError

client = Client(api_key="your-api-key")

try:
    user = client.users.get(999)
except APIError as e:
    if e.code == "NOT_FOUND":
        print("User doesn't exist")
    else:
        print(f"Error: {e.message}")
```

---

## Webhooks

Receive real-time notifications for events.

### Events

| Event | Description |
|-------|-------------|
| `user.created` | New user created |
| `user.updated` | User information updated |
| `user.deleted` | User deleted |

### Payload

```json
{
  "event": "user.created",
  "timestamp": "2024-01-16T14:22:00Z",
  "data": {
    "id": 3,
    "name": "Alice Johnson",
    "email": "alice@example.com"
  }
}
```

!!! tip "Verify Signatures"
    Always verify webhook signatures to ensure requests are authentic.
