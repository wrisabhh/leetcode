/* Write your PL/SQL query statement below */
SELECT
    sample_id,
    dna_sequence,
    species,

    /* starts with ATG */
    CASE
        WHEN dna_sequence LIKE 'ATG%' THEN 1
        ELSE 0
    END AS has_start,

    /* ends with TAA, TAG, or TGA */
    CASE
        WHEN dna_sequence LIKE '%TAA'
          OR dna_sequence LIKE '%TAG'
          OR dna_sequence LIKE '%TGA'
        THEN 1
        ELSE 0
    END AS has_stop,

    /* contains ATAT anywhere */
    CASE
        WHEN dna_sequence LIKE '%ATAT%' THEN 1
        ELSE 0
    END AS has_atat,

    /* contains at least 3 consecutive G */
    CASE
        WHEN REGEXP_LIKE(dna_sequence, 'G{3}') THEN 1
        ELSE 0
    END AS has_ggg

FROM Samples
ORDER BY sample_id;
