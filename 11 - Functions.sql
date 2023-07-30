CREATE OR REPLACE FUNCTION comment_replies( id integer)
RETURNS json
AS
$$
DECLARE result json;
BEGIN

	SELECT
		json_agg( json_build_object(
			'user', comments.user_id,
			'comment', comments.content
		)) INTO result
	FROM comments WHERE comment_parent_id = id;
	
	RETURN result;
END;
$$
LANGUAGE plpgsql;

SELECT
	json_agg( json_build_object(
		'user', comments.user_id,
		'comment', comments.content
		))
FROM comments WHERE comment_parent_id = 1;

SELECT comment_replies(3);