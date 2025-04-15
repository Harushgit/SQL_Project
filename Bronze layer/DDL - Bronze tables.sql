/* 
Creating Bronze Tables

This script creates tables in the 'bronze' schema

In this script it is a first stage of project to creating new tables
for the further process.

The given data it has two parts:
    1. CRM -- ( Master Table )
	2. erp 

This script to re-define the DDL structure of 'bronze' Tables
*/

/*
========================================================================
						CRM tables
========================================================================*/
-- Customer info table (CRM)
CREATE TABLE bronze.crm_cust_info
(
	cst_id              INT,
    cst_key             NVARCHAR(50),
    cst_firstname       NVARCHAR(50),
    cst_lastname        NVARCHAR(50),
    cst_marital_status  NVARCHAR(50),
    cst_gndr            NVARCHAR(50),
    cst_create_date     DATE
);

-- Product info table (CRM)
CREATE TABLE bronze.crm_prd_info
(
    prd_id       INT,
    prd_key      NVARCHAR(50),
    prd_nm       NVARCHAR(50),
    prd_cost     INT,
    prd_line     NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);

-- Sales info table (CRM)
CREATE TABLE bronze.crm_sales_details
(
    sls_ord_num  NVARCHAR(50),
    sls_prd_key  NVARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);
/*
========================================================================
						ERP tables
========================================================================*/
-- location info table (ERP)
CREATE TABLE bronze.erp_loc_a101
(
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
);

-- customer info table (ERP)
CREATE TABLE bronze.erp_cust_az12
(
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
);

-- categories info table
CREATE TABLE bronze.erp_px_cat_g1v2
(
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
);