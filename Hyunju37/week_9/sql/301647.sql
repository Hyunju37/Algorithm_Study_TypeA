SELECT
    c.id,
    c.genotype,
    p.genotype AS parent_genotype
FROM ecoli_data p
INNER JOIN 
    ecoli_data c ON p.id = c.parent_id
    AND c.genotype & p.genotype = p.genotype