---
title: API Reference
---

# API Reference

Complete reference documentation for the API.

---

## Overview

The API provides programmatic access to all features. All endpoints return JSON and use standard HTTP methods.

### Base URL

```
https://api.example.com/v1
```

### Authentication

All requests require an API key in the header:

```bash
curl -H "Authorization: Bearer YOUR_API_KEY" \
     https://api.example.com/v1/users
```

---

## Quick Reference

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/users` | List all users |
| `POST` | `/users` | Create a user |
| `GET` | `/users/{id}` | Get a user |
| `PUT` | `/users/{id}` | Update a user |
| `DELETE` | `/users/{id}` | Delete a user |

---

## Response Format

### Success Response

```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "John Doe",
    "email": "john@example.com"
  }
}
```

### Error Response

```json
{
  "success": false,
  "error": {
    "code": "NOT_FOUND",
    "message": "User not found"
  }
}
```

---

## Status Codes

| Code | Description |
|------|-------------|
| `200` | Success |
| `201` | Created |
| `400` | Bad Request |
| `401` | Unauthorized |
| `403` | Forbidden |
| `404` | Not Found |
| `429` | Rate Limited |
| `500` | Server Error |

---

## Rate Limiting

- **Free tier**: 100 requests/minute
- **Pro tier**: 1,000 requests/minute
- **Enterprise**: Unlimited

Rate limit headers are included in all responses:

```
X-RateLimit-Limit: 100
X-RateLimit-Remaining: 95
X-RateLimit-Reset: 1640000000
```

---

## SDKs

=== "Python"

    ```bash
    pip install example-sdk
    ```

    ```python
    from example import Client

    client = Client(api_key="your-api-key")
    users = client.users.list()
    ```

=== "JavaScript"

    ```bash
    npm install example-sdk
    ```

    ```javascript
    import { Client } from 'example-sdk';

    const client = new Client({ apiKey: 'your-api-key' });
    const users = await client.users.list();
    ```

=== "Go"

    ```bash
    go get github.com/example/sdk-go
    ```

    ```go
    import "github.com/example/sdk-go"

    client := example.NewClient("your-api-key")
    users, err := client.Users.List()
    ```

---

## Next Steps

- [Endpoints](endpoints.md) - Detailed endpoint documentation
- [Features](../guide/features.md) - Explore theme features
