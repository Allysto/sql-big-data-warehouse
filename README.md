#  SQL Big Data Warehouse Project

[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-blue)](https://postgresql.org)
[![Data Warehouse](https://img.shields.io/badge/Architecture-Star%20Schema-brightgreen)](https://en.wikipedia.org/wiki/Star_schema)

## Query Results

### Sales by Province

| Province | Total Sales | Unique Customers |
|----------|-------------|------------------|
| Western Cape | R286,737.71 | 182 |
| Eastern Cape | R262,029.34 | 188 |
| KwaZulu-Natal | R255,727.45 | 182 |
| Gauteng | R241,191.80 | 175 |
| Free State | R238,335.80 | 178 |

**Total Sales:** ~R1,284,000+

##  Database Schema

- **Fact Table**: `fact_sales` (partitioned monthly)
- **Dimensions**: `dim_customer`, `dim_product`, `dim_store`, `dim_date`
- **Total Records**: 100,000+ sales transactions

##  Project Structure


##  How to Run

```bash
# Connect to database
psql -U postgres -d retail_dw

# Run a query
\i queries/sales_by_province.sql

## **Step 4: Create .gitignore**

```bash
cat > "/c/Users/ally/Desktop/sql-big-data-project/.gitignore" << 'EOF'
# Temporary files
*.tmp
*.log
*.pid

# OS files
.DS_Store
Thumbs.db

# IDE files
.vscode/
.idea/
