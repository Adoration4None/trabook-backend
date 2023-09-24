# Trabook Backend

Trabook API is a RESTful API designed to support the backend of the Trabook travel booking platform. 
This API allows for the management of: 
***clients, payment methods, continents, countries, destinations, hotels, flights, plans, bookings***, and ***reviews***.

> ### [Frontend Here (Vue.js 2)](https://github.com/tiago2342t/vuejs-front)

---

## API Endpoints
The API provides the following endpoints:

- `/api/v1/clients/`         ***Manage clients***.
- `/api/v1/payment-methods/` ***Manage payment methods***.
- `/api/v1/continents/`      ***Manage continents***.
- `/api/v1/countries/`       ***Manage countries***.
- `/api/v1/destinations/`    ***Manage destinations***.
- `/api/v1/hotels/`          ***Manage hotels***.
- `/api/v1/flights/`         ***Manage flights***.
- `/api/v1/plans/`           ***Manage plans***.
- `/api/v1/bookings/`        ***Manage bookings***.
- `/api/v1/reviews/`         ***Manage reviews***.

> Each endpoint supports **CRUD** operations.

---

## Documentation
For detailed information on each endpoint, refer to the [API documentation](./OpenAPI.yaml).

---

## Relational Model
The database was designed as described in the following diagram.
<img src="https://drive.google.com/file/d/15pKC_S9_G8posoP9yOnIKhCyH8HtOFru/view?usp=drive_link" />

