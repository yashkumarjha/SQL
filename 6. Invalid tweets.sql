-- https://leetcode.com/problems/invalid-tweets/description/
SELECT TWEET_ID
FROM TWEETS
WHERE LENGTH(CONTENT)>15;
