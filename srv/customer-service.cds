using {com.products as products} from '../db/schema';

service CustomerService {
    entity CustomerSrv as projection on products.Customer;
}
