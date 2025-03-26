select * from {{ ref('fct_reviews') }} as a
left join
 {{ ref('dim_listings_cleansed') }} as b on a.listing_id=b.listing_id
 where b.created_at>a.review_date
 limit 10