# Inventory Tracker

This project is for Shopify's Backend Developer Internship for Summer 2022. This project demonstrates the abilitiy to allow clients to perform REST API requests to create, retrieve, update, and delete (CRUD) inventory items.

## Deployment
This application has been deployed on Heroku.

Access home page [here](https://alan-tran-inventory-tracker.herokuapp.com/).

Access GraphQL IDE or GraphiQL to perform queries [here](https://alan-tran-inventory-tracker.herokuapp.com/graphiql).

## Performing Queries
The basic CRUD APIs can be accessed by performing queries in GraphQL.
### Model
Inventory Items have four fields: id, name, brand, stockNumber.
### Examples of GraphQL Queries
**Create**  
```
mutation createInventoryItem {
  createInventoryItem(
    input: {name: "HDMI Cable", brand: "Monster", stockNumber: 10}
  ) {
    inventoryItem {
      id
      name
      brand
      stockNumber
    }
  }
}
```

**Retrieve**  
```
query fetchInventoryItem {
  inventoryItem(id: 2) {
    id
    name
    brand
  }
}
```

**Retrieve All**  
```
query fetchInventoryItems {
  inventoryItems {
    id
    name
    brand
    stockNumber
  }
}
```

**Update**  
```
mutation updateInventoryItem {
  updateInventoryItem(
    input: {id: 1, name: "HDMI Cable", brand: "Monster", stockNumber: 11}
  ) {
    inventoryItem {
      id
      name
      brand
      stockNumber
    }
  }
}
```

**Delete**  
```
deleteInventoryItem(input: {id: 2}) {
    success
}
```
## Local Deployment
Follow these instructions to deploy and run the application locally.

### Prerequisites
- Git and Github
- Ruby 3.0.3
- Rails 7.0.1
- mySQL 8.0.27

### Clone Repository
```
$git clone git@github.com:TranAlan/inventory_tracker.git
```

### Configuration
Modify `config/database.yml` and replace the username and password with your mysql username and password.

### Installing Dependencies
```
bundle install
```
### Database Creation
```
$rails db:create
$rails db:migrate
```
### Run Server
```
$rails server
```
## Project Structure

    .
    ├── app                   # Rails files
    │   ├── graphql           # GraphQL (mutation, types)
    │   ├── controllers       # home, export_csv, graphql
    │   ├── models            # inventory item model
    │   ├── services          # inventory item service
    │   └── view              # Rails (SSR) views
    ├── config                # Configuration files
    ├── db                    # Database schema and migrate files
    └── README.md