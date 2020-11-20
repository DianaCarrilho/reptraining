using {training.salesorder as salesorder} from '../schema/salesorder';
using {training.user as user} from '../schema/user'

namespace training.views; 

define view ProductByClient as
	select from salesorder.TblSalesOrderItem{
		product.ID as ![productId],
		product.name as ![productName],
		salesOrder.client.ID as ![clientId],
		salesOrder.Client.name as ![clientName]
	};