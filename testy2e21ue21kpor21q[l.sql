CREATE TABLE table_products
(
    id                  SERIAL  NOT NULL PRIMARY KEY,
    product_type_id     INT     NOT NULL PRIMARY KEY,
    product_features_id INT     NOT NULL PRIMARY KEY,
    name                TEXT    NOT NULL CHECK ( name <> '' ),
    sale_price          NUMERIC NOT NULL CHECK ( sale_price > 0 )
);

CREATE TABLE table_product_features
(
    id                SERIAL  NOT NULL PRIMARY KEY,
    amount_of_product INT     NOT NULL CHECK ( amount_of_product > 0 ),
    manufacturer      TEXT    NOT NULL CHECK ( manufacturer <> '' ),
    cost_price        NUMERIC NOT NULL CHECK ( cost_price > 0 ),
    FOREIGN KEY (id) REFERENCES table_products (product_features_id)
);

CREATE TABLE table_product_types
(
    id           SERIAL NOT NULL PRIMARY KEY,
    product_type TEXT   NOT NULL CHECK ( product_type <> '' ),
    FOREIGN KEY (id) REFERENCES table_products (product_type_id)
);

CREATE TABLE table_about_sales
(
    id              SERIAL NOT NULL PRIMARY KEY,
    seller_id       INT    NOT NULL PRIMARY KEY,
    client_id       INT    NOT NULL PRIMARY KEY,
    product_name_id INT    NOT NULL PRIMARY KEY,
    sale_price_id   INT    NOT NULL PRIMARY KEY,
    number_of_sales INT    NOT NULL CHECK ( number_of_sales > 0 ),
    date_of_sale    DATE   NOT NULL,
    FOREIGN KEY (client_id) REFERENCES table_client_identification (id)

);

CREATE TABLE table_sellers
(
    id                 SERIAL NOT NULL PRIMARY KEY,
    post_id            INT    NOT NULL PRIMARY KEY,
    first_name         TEXT   NOT NULL CHECK ( first_name <> '' ),
    last_name          TEXT   NOT NULL CHECK ( last_name <> '' ),
    date_of_employment DATE   NOT NULL,
    sex                TEXT   NOT NULL CHECK ( sex <> '' ),
    paycheck           INT    NOT NULL CHECK ( paycheck > 0 )
);

CREATE TABLE table_posts
(
    id         SERIAL NOT NULL PRIMARY KEY,
    job_tittle TEXT   NOT NULL CHECK ( job_tittle <> '' ),
    FOREIGN KEY (id) REFERENCES table_sellers (post_id)
);

CREATE TABLE table_client_identification
(
    id        SERIAL NOT NULL PRIMARY KEY,
    client_id INT DEFAULT NULL PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES table_clients (id)
);

CREATE TABLE table_clients
(
    id                  SERIAL  NOT NULL PRIMARY KEY,
    purchase_history_id INT     NOT NULL PRIMARY KEY,
    first_name          TEXT    NOT NULL CHECK ( first_name <> '' ),
    last_name           TEXT    NOT NULL CHECK ( last_name <> '' ),
    client_email        TEXT    NOT NULL CHECK ( client_email <> '' ),
    phone_number        TEXT    NOT NULL CHECK ( phone_number <> '' ),
    sex                 TEXT    NOT NULL CHECK ( sex <> '' ),
    discount            NUMERIC NOT NULL CHECK (discount > 0 ),
    mailing             BOOLEAN NOT NULL DEFAULT FALSE
)