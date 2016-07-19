CREATE TABLE region 
(
  reg_id VARCHAR2(5) PRIMARY KEY,
  num_vertices VARCHAR2(32),
  shape SDO_GEOMETRY
);

INSERT INTO user_sdo_geom_metadata VALUES ( 'region', 'shape', SDO_DIM_ARRAY(  
SDO_DIM_ELEMENT('X', 0, 500, 0.005), SDO_DIM_ELEMENT('Y', 0, 500, 0.005) ), NULL);

CREATE INDEX region_idx ON region(shape) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

INSERT INTO region VALUES
(
  'R4',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(400,0, 500,0, 500,100, 400,100,400,0)
  )
);



INSERT INTO region VALUES
(
  'R5',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(400,100,500,100,500,250,400,200,400,100)
  )
);

INSERT INTO region VALUES
(
  'R6',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(300,150,400,100,400,200,250,250,300,150
)
  )
);


INSERT INTO region VALUES
(
  'R7',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(100,100,300,150,250,250,150,250,100,100)
  )
);


INSERT INTO region VALUES
(
  'R12',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(400,200,500,250,500,350,400,350
,400,200)
  )
);


INSERT INTO region VALUES
(
  'R1',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(0,0,150,0,100,100,0,100,0,0
)
  )
);

INSERT INTO region VALUES
(
  'R2',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(150,0,250,0,300,150,100,100
,150,0)
  )
);
INSERT INTO region VALUES
(
  'R3',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(250,0,400,0,400,100,300,150,250,0)
  )
);
INSERT INTO region VALUES
(
  'R11',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(250,250,400,200,400,350,300,350,250,250)
  )
);
INSERT INTO region VALUES
(
  'R8',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(0,100,100,100,150,250,0,250,0,100
)
  )
);
INSERT INTO region VALUES
(
  'R9',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(0,250,150,250,150,400,0,350,0,250)
  )
);

INSERT INTO region VALUES
(
  'R10',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(150,250,250,250,300,350,150,400,150,250
)
  )
);

INSERT INTO region VALUES
(
  'R15',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(150,400,300,350,300,500,150,500,150,400)
  )
);

INSERT INTO region VALUES
(
  'R14',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(300,350,400,350,400,500,300,500,300,350)
  )
);

INSERT INTO region VALUES
(
  'R16',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(0,350,150,400,150,500,0,500,0,350)
  )
);

INSERT INTO region VALUES
(
  'R13',
   '4',
  SDO_GEOMETRY(
    2003, 
    NULL,
    NULL,    
    SDO_ELEM_INFO_ARRAY(1,1003,1), 
    SDO_ORDINATE_ARRAY(400,350,500,350,500,500,400,500,400,350)
  )
);

CREATE TABLE lion
(
  lion_id VARCHAR2(5) PRIMARY KEY,
  shape SDO_GEOMETRY
);

INSERT INTO user_sdo_geom_metadata VALUES ( 'lion', 'shape', SDO_DIM_ARRAY(  
SDO_DIM_ELEMENT('X', 0, 500, 0.005), SDO_DIM_ELEMENT('Y', 0, 500, 0.005) ), NULL);

CREATE INDEX lion_idx ON lion(shape) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

INSERT INTO lion VALUES
(
  'L14',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(350,50
, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L10',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(355,190
, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L11',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(30,210
, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L12',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(50,200
, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L13',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(170,230, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L6',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(350,300
, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L7',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(35,10, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L4',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(450,300, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L5',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(20,20

, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L2',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(230,475, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L3',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(370,455, NULL),   
    NULL, 
    NULL
  )
);


INSERT INTO lion VALUES
(
  'L1',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(50,450, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L8',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(115,350, NULL),   
    NULL, 
    NULL
  )
);

INSERT INTO lion VALUES
(
  'L9',
  SDO_GEOMETRY(
    2001, 
    NULL,
    SDO_POINT_TYPE(240,335
, NULL),   
    NULL, 
    NULL
  )
);


CREATE TABLE pond
(
  pond_id VARCHAR2(5) PRIMARY KEY,
  shape SDO_GEOMETRY
);

INSERT INTO user_sdo_geom_metadata VALUES ( 'pond', 'shape', SDO_DIM_ARRAY(  
SDO_DIM_ELEMENT('X', 0, 500, 0.005), SDO_DIM_ELEMENT('Y', 0, 500, 0.005) ), NULL);

CREATE INDEX pond_idx ON pond(shape) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

INSERT INTO pond VALUES
(
  'P2',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(220+15,430, 220,430+15, 220-15,430) 
  )
);

INSERT INTO pond VALUES
(
  'P3',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(370+15,435, 370,435+15, 370-15,435) 
  )
);

INSERT INTO pond VALUES
(
  'P1',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(75+15,430, 75,430+15, 75-15,430) 
  )
);

INSERT INTO pond VALUES
(
  'P6',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(220+15,320, 220,320+15, 220-15,320) 
  )
);

INSERT INTO pond VALUES
(
  'P7',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(470+15,280, 470,280+15, 470-15,280) 
  )
);

INSERT INTO pond VALUES
(
  'P4',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(75+15,330, 75,330+15, 75-15,330) 
  )
);

INSERT INTO pond VALUES
(
  'P5',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(320+15,280, 320,280+15, 320-15,280) 
  )
);

INSERT INTO pond VALUES
(
  'P8',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(375+15,175, 375,175+15, 375-15,175) 
  )
);


CREATE TABLE ambulancearea
(
  ambulancearea_id VARCHAR2(5) PRIMARY KEY,
  shape SDO_GEOMETRY
);

INSERT INTO user_sdo_geom_metadata VALUES ( 'ambulancearea', 'shape', SDO_DIM_ARRAY(  
SDO_DIM_ELEMENT('X', 0, 500, 0.005), SDO_DIM_ELEMENT('Y', 0, 500, 0.005) ), NULL);

CREATE INDEX ambulancearea_idx ON ambulancearea(shape) INDEXTYPE IS MDSYS.SPATIAL_INDEX;

INSERT INTO ambulancearea VALUES
(
  'A1',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(100+90,400, 100,400+90, 100-90,400) 
  )
);

INSERT INTO ambulancearea VALUES
(
  'A3',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(400+90,400, 400,400+90, 400-90,400) 
  )
);

INSERT INTO ambulancearea VALUES
(
  'A2',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(250+90,400, 250,400+90, 250-90,400) 
  )
);

INSERT INTO ambulancearea VALUES
(
  'A5',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(300+90,100, 300,100+90, 300-90,100) 
  )
);

INSERT INTO ambulancearea VALUES
(
  'A4',
  SDO_GEOMETRY(
   2003,
     NULL,
     NULL,
     SDO_ELEM_INFO_ARRAY(1,1003,4), 
     SDO_ORDINATE_ARRAY(400+90,250, 400,250+90, 400-90,250) 
  )
);