# 🛒 E-commerce Database Design

This repository contains the **Entity-Relationship Diagram (ERD)** and **SQL schema** for a flexible and scalable e-commerce platform. The goal is to support customizable products, variations, and attributes to accommodate a wide range of use cases (clothing, electronics, etc.).

##  Contents

- `ecommerce.sql` – SQL file to create the full database schema
- `ecommerce-erd.dbml` – ERD file for use in dbdiagram.io
- `README.md` – Project documentation

---

##  Objective

Design and implement a robust relational database to support:
- Product catalog and inventory
- Color and size variations
- Dynamic product attributes
- Brand and category classification

---

## 🗃 Database Tables Overview

###  Products

| Table | Description |
|-------|-------------|
| `brand` | Stores brand names and descriptions |
| `product_category` | Defines main product categories |
| `product` | Core table with general product info |
| `product_item` | Represents individual SKUs (stock keeping units) |
| `product_image` | Stores URLs of product images |

###  Variations

| Table | Description |
|-------|-------------|
| `color` | Available colors for products |
| `size_category` | Groups of size types (e.g., clothing, shoes) |
| `size_option` | Specific size values (e.g., S, M, L, 42) |
| `product_variation` | Links product_item to specific color and size |

###  Attributes

| Table | Description |
|-------|-------------|
| `attribute_category` | Groups of attribute types (e.g., physical, technical) |
| `attribute_type` | Data type of attributes (e.g., text, number, boolean) |
| `product_attribute` | Stores product-specific attributes and values |

---

##  Entity Relationships

- A `brand` and a `product_category` can have multiple `products`
- A `product` can have multiple `product_items`, `images`, and `attributes`
- A `product_item` can have multiple `product_variations` (size + color combos)
- Attributes are dynamic and typed via `attribute_type`


---
##  Team Collaboration
This project was developed collaboratively as part of a group database design challenge. 
The group members include:
  - Mary Macharia
  - Benoni Otieno
  - Charles Ochieng
  - Boniface Kathiwa
  - Miles Maloka
  - Khomotjo Mathabatha
  - Jermiah Mbusya
  - Brian Kiptoo
  - Busami Victor

