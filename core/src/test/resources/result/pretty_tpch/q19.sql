SELECT 
    SUM(l_extendedprice * (1 - l_discount)) AS revenue
FROM lineitem , part
WHERE (p_partkey = l_partkey
    AND p_brand = 'Brand#45'
    AND p_container IN ('SM CASE' , 
    'SM BOX' , 
    'SM PACK' , 
    'SM PKG')
    AND l_quantity >= 5
    AND l_quantity <= 5 + 10
    AND p_size BETWEEN 1 AND 5
    AND l_shipmode IN ('AIR' , 
    'AIR REG')
    AND l_shipinstruct = 'DELIVER IN PERSON')
    OR (p_partkey = l_partkey
    AND p_brand = 'Brand#11'
    AND p_container IN ('MED BAG' , 
    'MED BOX' , 
    'MED PKG' , 
    'MED PACK')
    AND l_quantity >= 15
    AND l_quantity <= 15 + 10
    AND p_size BETWEEN 1 AND 10
    AND l_shipmode IN ('AIR' , 
    'AIR REG')
    AND l_shipinstruct = 'DELIVER IN PERSON')
    OR (p_partkey = l_partkey
    AND p_brand = 'Brand#21'
    AND p_container IN ('LG CASE' , 
    'LG BOX' , 
    'LG PACK' , 
    'LG PKG')
    AND l_quantity >= 25
    AND l_quantity <= 25 + 10
    AND p_size BETWEEN 1 AND 15
    AND l_shipmode IN ('AIR' , 
    'AIR REG')
    AND l_shipinstruct = 'DELIVER IN PERSON');