# arm-redis-timeseries

[![redis-timeseries](https://github.com/vrince/arm-redis-timeseries/actions/workflows/redis-timeseries.yml/badge.svg)](https://github.com/vrince/arm-redis-stack/actions/workflows/redis-timeseries.yml)

Automated [RedisTimeSeries](https://github.com/RedisTimeSeries/RedisTimeSeries) for arm 32bits (armv7). Primary target is raspberry-pi using 32 bits OS.

See this repo for [Redis](https://github.com/vrince/arm-redis)

## Install

### Redis TimeSeries

First `redis-server` need to be installed them:

```bash
wget https://github.com/vrince/arm-redis-stack/releases/download/redis_timeseries%2Fv1.6.9/redis_timeseries-linux-armv7-v1.6.9.gz
tar -xf redis_timeseries-linux-armv7-v1.6.9.gz
gzip -dN redis_timeseries-linux-armv7-v1.6.9.gz
chmod +x redistimeseries.so 
./bin/redis-server --loadmodule ./redistimeseries.so
```

```bash
               _._                                                  
           _.-``__ ''-._                                             
      _.-``    `.  `_.  ''-._           Redis 7.0.0 (d375595d/0) 32 bit
  .-`` .-```.  ```\/    _.,_ ''-._                                  
 (    '      ,       .-`  | `,    )     Running in standalone mode
 |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
 |    `-._   `._    /     _.-'    |     PID: 17139
  `-._    `-._  `-./  _.-'    _.-'                                   
 |`-._`-._    `-.__.-'    _.-'_.-'|                                  
 |    `-._`-._        _.-'_.-'    |           https://redis.io       
  `-._    `-._`-.__.-'_.-'    _.-'                                   
 |`-._`-._    `-.__.-'    _.-'_.-'|                                  
 |    `-._`-._        _.-'_.-'    |                                  
  `-._    `-._`-.__.-'_.-'    _.-'                                   
      `-._    `-.__.-'    _.-'                                       
          `-._        _.-'                                           
              `-.__.-'                                               

17139:M 04 May 2022 22:31:22.618 # WARNING: The TCP backlog setting of 511 cannot be enforced because /proc/sys/net/core/somaxconn is set to the lower value of 128.
17139:M 04 May 2022 22:31:22.618 # Server initialized
17139:M 04 May 2022 22:31:22.631 * <timeseries> RedisTimeSeries version 10609, git_sha=f36e5a703dc9a2487880087a34f6cb0e56d9a459
17139:M 04 May 2022 22:31:22.632 * <timeseries> Redis version found by RedisTimeSeries : 7.0.0 - oss
17139:M 04 May 2022 22:31:22.632 * <timeseries> loaded default CHUNK_SIZE_BYTES policy: 4096
17139:M 04 May 2022 22:31:22.632 * <timeseries> loaded server DUPLICATE_POLICY: block
17139:M 04 May 2022 22:31:22.632 * <timeseries> Setting default series ENCODING to: compressed
17139:M 04 May 2022 22:31:22.632 * <timeseries> Detected redis oss
```
