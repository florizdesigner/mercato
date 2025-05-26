CREATE TABLE IF NOT EXISTS brand (
    id              BIGSERIAL       PRIMARY KEY,
    name            VARCHAR(64)     NOT NULL,
    description     TEXT,
    url             VARCHAR(256),
    created_time    TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    deleted_time    TIMESTAMP
)

CREATE TABLE IF NOT EXISTS category (
    id              BIGSERIAL       PRIMARY KEY,
    name            VARCHAR(128)    NOT NULL UNIQUE,
    description     TEXT,
    image_url       VARCHAR(128),
    created_time    TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    deleted_time    TIMESTAMP
)

CREATE TABLE IF NOT EXISTS product (
    id              BIGSERIAL       PRIMARY KEY,
    name            VARCHAR(256)    NOT NULL,
    description     TEXT,
    price           NUMERIC(19, 2)  NOT NULL,
    stock_quantity  INTEGER         NOT NULL,
    created_time    TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    deleted_time    TIMESTAMP,
    brand_id        INTEGER         NOT NULL,
    category_id     INTEGER         NOT NULL,

    CONSTRAINT fk_product_brand     FOREIGN KEY (brand_id)      REFERENCES brand(id),
    CONSTRAINT fk_product_category  FOREIGN KEY (category_id)   REFERENCES category(id)
)