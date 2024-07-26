using {API_SALES_ORDER_SRV as order} from '../srv/external/API_SALES_ORDER_SRV';

service SalesOrderService @(path : '/Sales') {
 
 entity SalesOrder as projection on order.A_SalesOrder;

};

@protocol: 'rest'
service OrderPostService {

  @open
  type object {};

  action Create_Order(Order : object) returns object;
}
