(a)
select s.lion_id
from lion s
where sdo_filter(s.shape,sdo_geometry(2003,null,null,sdo_elem_info_array(1,1003,1),sdo_ordinate_array(150,200,400,350)),'querytype=WINDOW')='TRUE';

(b)
select l.lion_id
from lion l, pond p
where sdo_within_distance(l.shape, p.shape, 'distance = 150') = 'TRUE' and p.pond_id in('P1');

(d)
select p.pond_id pn, sdo_nn_distance(1) distance
from pond p, lion l
where l.lion_id='L2' and sdo_nn(p.shape,l.shape,'sdo_num_res=3',1)='TRUE' order by distance;

(f)
select l.lion_id, p.pond_id
from table(sdo_join('lion','shape','pond','shape','mask=inside')) c, lion l, pond p
where c.rowid1=l.rowid and c.rowid2 = p.rowid;

(h)
select distinct r.reg_id 
from lion s, region r
where sdo_filter(s.shape,r.shape)='TRUE' and r.reg_id not in 
(select distinct rr.reg_id 
from pond p, region rr
where sdo_filter(p.shape,rr.shape)='TRUE');

(i)
select ll.lion_id
from lion ll
where ll.lion_id not in 
(select distinct l.lion_id 
from lion l, ambulancearea a
where sdo_filter(l.shape,a.shape)='TRUE');
