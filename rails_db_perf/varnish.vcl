
vcl 4.0;

sub vcl_recv {
  if(req.method == "GET" || req.method == "HEAD") {
    # Session cookies start with an _. For *this app*, we don't care about the user's session
    # on GET requests, so we can go ahead and remove all cookies begining with _.
    set req.http.Cookie = regsuball(req.http.Cookie, "(^|;\s*)_[^;=]+=[^;]*", "");
  }
}
