总页数：

select count(*) from student;//总条数  4 3

每页3 条

sumcount%count==0
sumpage=sumcount/count

sumcount%count!=0
sumpage=sumcount/count+1

add query最后一页

delete  
delete from student where id=?

模态框
非模态

