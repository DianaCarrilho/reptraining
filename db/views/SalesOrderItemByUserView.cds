using { training.salesorder as salesorder } from '../schema/salesorder';
using { training.user as user } from '../schema/user';
 
namespace training.views;
 
define view SalesOrderItemByUserView as 
 
    select from salesorder.TblSalesOrderItem{
        ID,
        salesOrder.ID as ![salesOrderID],
        salesOrder.status as ![salesOrderStatus],
        salesOrder.user.ID as ![userId],
        salesOrder.ID as ![userName]
 
    };