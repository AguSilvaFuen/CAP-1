using {com.products as products} from '../db/schema';

service CatalogService {
    entity Products as projection on products.Products;
    entity Supplier as projection on products.Supplier;
    entity Supplier_01 as projection on products.Supplier_01;
    entity Supplier_02 as projection on products.Supplier_02;
}
