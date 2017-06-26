--这段是为了更新PN数据表
--不使用TYPE字符串，而是使用TypeID代替字符串
--这样会更加科学
Update [PN] 
set PNTypeID = (
select [TYPE].TYPEID
from [TYPE]
Where [TYPE].TYPEType = [PN].PNType
)