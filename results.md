~/projects$ sh ./wrk.sh

Rails
-----

    Running 10s test @ http://localhost:3000/posts
      2 threads and 10 connections
      Thread Stats   Avg      Stdev     Max   +/- Stdev
        Latency   116.85ms   54.17ms 476.97ms   72.55%
        Req/Sec    43.05     12.56    70.00     55.56%
      866 requests in 10.03s, 533.64KB read
    Requests/sec:     86.30
    Transfer/sec:     53.18KB

Elixir
------

    Running 10s test @ http://localhost:4000/api/posts
      2 threads and 10 connections
      Thread Stats   Avg      Stdev     Max   +/- Stdev
        Latency     5.59ms    7.90ms 163.84ms   98.62%
        Req/Sec     1.03k   110.07     1.15k    90.45%
      20398 requests in 10.01s, 10.76MB read
    Requests/sec:   2037.11
    Transfer/sec:      1.07MB

Varnish
-------

    Running 10s test @ http://localhost:8080/posts
      2 threads and 10 connections
      Thread Stats   Avg      Stdev     Max   +/- Stdev
        Latency   505.90us  575.74us  20.30ms   99.44%
        Req/Sec    10.21k   578.08    12.27k    87.00%
      203133 requests in 10.00s, 145.04MB read
    Requests/sec:  20311.89
    Transfer/sec:     14.50MB
