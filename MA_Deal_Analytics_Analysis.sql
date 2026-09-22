USE MA_Deal_Analytics;
GO

/* =========================================================
   M&A DEAL ANALYTICS - SQL ANALYSIS
   ========================================================= */


/* 1. Overall KPI Validation */
SELECT
    COUNT(*) AS total_acquisitions,
    SUM(CASE WHEN price_clean IS NOT NULL THEN 1 ELSE 0 END) AS disclosed_deals,
    SUM(CASE WHEN price_clean IS NULL THEN 1 ELSE 0 END) AS undisclosed_deals,
    SUM(price_clean) AS total_disclosed_deal_value,
    AVG(price_clean) AS average_disclosed_deal_value
FROM dbo.ma_deals;


/* 2. Deal Count, Total Value & Average Value by Year */
SELECT
    acquisition_year,
    COUNT(acquisitions_id) AS deal_count,
    SUM(price_clean) AS total_disclosed_deal_value,
    AVG(price_clean) AS average_disclosed_deal_value
FROM dbo.ma_deals
WHERE price_clean IS NOT NULL
GROUP BY acquisition_year
ORDER BY acquisition_year;


/* 3. Top 10 Acquiring Companies */
SELECT TOP 10
    acquiring_company,
    COUNT(acquisitions_id) AS deal_count
FROM dbo.ma_deals
GROUP BY acquiring_company
ORDER BY deal_count DESC;


/* 4. Top 10 Acquired Companies */
SELECT TOP 10
    acquired_company,
    COUNT(acquisitions_id) AS deal_count
FROM dbo.ma_deals
GROUP BY acquired_company
ORDER BY deal_count DESC;


/* 5. Top 10 Largest Disclosed Deals */
SELECT TOP 10
    acquiring_company,
    acquired_company,
    price_clean,
    acquisition_year
FROM dbo.ma_deals
WHERE price_clean IS NOT NULL
ORDER BY price_clean DESC;


/* 6. Deal Size Category by Year */
SELECT
    acquisition_year,
    CASE
        WHEN price_clean < 100000000 THEN 'Small (<$100M)'
        WHEN price_clean < 1000000000 THEN 'Medium ($100M-$1B)'
        WHEN price_clean < 5000000000 THEN 'Large ($1B-$5B)'
        ELSE 'Mega (>$5B)'
    END AS deal_size_category,
    COUNT(*) AS deal_count
FROM dbo.ma_deals
WHERE price_clean IS NOT NULL
GROUP BY
    acquisition_year,
    CASE
        WHEN price_clean < 100000000 THEN 'Small (<$100M)'
        WHEN price_clean < 1000000000 THEN 'Medium ($100M-$1B)'
        WHEN price_clean < 5000000000 THEN 'Large ($1B-$5B)'
        ELSE 'Mega (>$5B)'
    END
ORDER BY
    acquisition_year,
    deal_size_category;


/* 7. Disclosed vs Undisclosed Deals */
SELECT
    CASE
        WHEN price_clean IS NULL THEN 'Undisclosed'
        ELSE 'Disclosed'
    END AS deal_status,
    COUNT(*) AS deal_count
FROM dbo.ma_deals
GROUP BY
    CASE
        WHEN price_clean IS NULL THEN 'Undisclosed'
        ELSE 'Disclosed'
    END
ORDER BY deal_count DESC;