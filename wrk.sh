echo "-----RAILS-----"
wrk http://localhost:3000/posts

echo "----ELIXIR----"
wrk http://localhost:4000/api/posts

echo "----VARNISH----"
wrk http://localhost:8080/posts
