with RAW_REVIEWS as  
(select * from {{ source('airbnb', 'reviews') }})
select 
	LISTING_ID,
	DATE as review_date,
	REVIEWER_NAME,
	COMMENTS as review_text,
	SENTIMENT review_sentiment
from raw_reviews