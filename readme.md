# arm-redis-timeseries

[![redis-timeseries](https://github.com/vrince/arm-redis-timeseries/actions/workflows/redis-timeseries.yml/badge.svg)](https://github.com/vrince/arm-redis-stack/actions/workflows/redis-timeseries.yml)

Automated [RedisTimeSeries](https://github.com/RedisTimeSeries/RedisTimeSeries) for arm 32bits (armv7). Primary target is raspberry-pi using 32 bits OS.

See this repo for [Redis](https://github.com/vrince/arm-redis)

## Install

### Redis TimeSeries

First `redis-server` need to be installed them:

```bash
 wget https://github.com/vrince/arm-redis-timeseries/releases/download/v1.12.5/redistimeseries-armv7-bullseye-v1.12.5.so -O redistimeseries.so
chmod +x redistimeseries.so 
./bin/redis-server --loadmodule ./redistimeseries.so
```

```bash
18471:C 03 Feb 2025 14:34:23.466 * Redis version=7.2.7, bits=32, commit=ba181057, modified=0, pid=18471, just started
18471:C 03 Feb 2025 14:34:23.466 * Configuration loaded
18471:M 03 Feb 2025 14:34:23.467 * Increased maximum number of open files to 10032 (it was originally set to 1024).
18471:M 03 Feb 2025 14:34:23.467 * monotonic clock: POSIX clock_gettime
18471:M 03 Feb 2025 14:34:23.468 # Warning: 32 bit instance detected but no memory limit set. Setting 3 GB maxmemory limit with 'noeviction' policy now.
                _._                                                  
           _.-``__ ''-._                                             
      _.-``    `.  `_.  ''-._           Redis 7.2.7 (ba181057/0) 32 bit
  .-`` .-```.  ```\/    _.,_ ''-._                                  
 (    '      ,       .-`  | `,    )     Running in standalone mode
 |`-._`-...-` __...-.``-._|'` _.-'|     Port: 6379
 |    `-._   `._    /     _.-'    |     PID: 18471
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

18471:M 03 Feb 2025 14:34:23.475 * <timeseries> RedisTimeSeries version 11205, git_sha=c0311e65891c3319e390370fe4d4532847c5b1e7
18471:M 03 Feb 2025 14:34:23.475 * <timeseries> Redis version found by RedisTimeSeries : 7.2.7 - oss
18471:M 03 Feb 2025 14:34:23.475 * <timeseries> loaded default CHUNK_SIZE_BYTES policy: 4096
```
