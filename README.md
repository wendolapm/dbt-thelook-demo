# dbt Analytics Engineering Project

This project demonstrates a simple analytics engineering workflow using dbt Cloud and BigQuery on a public ecommerce dataset.

## Key Features
- Layered data modeling: source → staging → marts → metrics
- Dimension tables (users, products)
- Fact table (order items)
- Aggregated business model (daily revenue by traffic source)
- Data quality tests using dbt (`not_null`, `unique`)
- Custom SQL tests for referential integrity
- Version-controlled development using GitHub

## Tech Stack
- dbt Cloud
- BigQuery
- SQL
- GitHub

## Goal
To demonstrate core analytics engineering concepts including modular transformations, data modeling, testing, and lineage.
