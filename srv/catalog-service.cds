using {com.products as products} from '../db/schema';

service CatalogService {
    entity Products as projection on products.Products;
}
