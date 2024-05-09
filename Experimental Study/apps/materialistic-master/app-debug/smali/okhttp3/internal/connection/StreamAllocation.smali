.class public final Lokhttp3/internal/connection/StreamAllocation;
.super Ljava/lang/Object;
.source "StreamAllocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final address:Lokhttp3/Address;

.field public final call:Lokhttp3/Call;

.field private final callStackTrace:Ljava/lang/Object;

.field private canceled:Z

.field private codec:Lokhttp3/internal/http/HttpCodec;

.field private connection:Lokhttp3/internal/connection/RealConnection;

.field private final connectionPool:Lokhttp3/ConnectionPool;

.field public final eventListener:Lokhttp3/EventListener;

.field private refusedStreamCount:I

.field private released:Z

.field private reportedAcquired:Z

.field private route:Lokhttp3/Route;

.field private routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

.field private final routeSelector:Lokhttp3/internal/connection/RouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 77
    nop

    return-void
.end method

.method public constructor <init>(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/Call;Lokhttp3/EventListener;Ljava/lang/Object;)V
    .locals 2
    .param p1, "connectionPool"    # Lokhttp3/ConnectionPool;
    .param p2, "address"    # Lokhttp3/Address;
    .param p3, "call"    # Lokhttp3/Call;
    .param p4, "eventListener"    # Lokhttp3/EventListener;
    .param p5, "callStackTrace"    # Ljava/lang/Object;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    .line 98
    iput-object p2, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    .line 99
    iput-object p3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    .line 100
    iput-object p4, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    .line 101
    new-instance v0, Lokhttp3/internal/connection/RouteSelector;

    invoke-direct {p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3, p4}, Lokhttp3/internal/connection/RouteSelector;-><init>(Lokhttp3/Address;Lokhttp3/internal/connection/RouteDatabase;Lokhttp3/Call;Lokhttp3/EventListener;)V

    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 102
    iput-object p5, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method private deallocate(ZZZ)Ljava/net/Socket;
    .locals 5
    .param p1, "noNewStreams"    # Z
    .param p2, "released"    # Z
    .param p3, "streamFinished"    # Z

    .line 376
    nop

    .line 378
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 379
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 381
    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 382
    iput-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 384
    :cond_1
    const/4 v2, 0x0

    .line 385
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_5

    .line 386
    if-eqz p1, :cond_2

    .line 387
    iput-boolean v1, v3, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    .line 389
    :cond_2
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-boolean v1, v1, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_5

    .line 390
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-direct {p0, v1}, Lokhttp3/internal/connection/StreamAllocation;->release(Lokhttp3/internal/connection/RealConnection;)V

    .line 391
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 392
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v1, Lokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 393
    sget-object v1, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v1, v3, v4}, Lokhttp3/internal/Internal;->connectionBecameIdle(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 394
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v1}, Lokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v1

    move-object v2, v1

    .line 397
    :cond_4
    iput-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 400
    :cond_5
    return-object v2
.end method

.method private findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;
    .locals 17
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 162
    .local v2, "foundPooledConnection":Z
    const/4 v3, 0x0

    .line 163
    .local v3, "result":Lokhttp3/internal/connection/RealConnection;
    const/4 v4, 0x0

    .line 166
    .local v4, "selectedRoute":Lokhttp3/Route;
    iget-object v5, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v5

    .line 167
    :try_start_0
    iget-boolean v0, v1, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    if-nez v0, :cond_12

    .line 168
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_11

    .line 169
    iget-boolean v0, v1, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v0, :cond_10

    .line 173
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 174
    .local v0, "releasedConnection":Lokhttp3/Connection;
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/connection/StreamAllocation;->releaseIfNoNewStreams()Ljava/net/Socket;

    move-result-object v6

    .line 175
    .local v6, "toClose":Ljava/net/Socket;
    iget-object v7, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v7, :cond_0

    .line 177
    iget-object v7, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v3, v7

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_0
    iget-boolean v7, v1, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v7, :cond_1

    .line 182
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 180
    :cond_1
    move-object v7, v0

    .line 185
    .end local v0    # "releasedConnection":Lokhttp3/Connection;
    .local v7, "releasedConnection":Lokhttp3/Connection;
    :goto_0
    if-nez v3, :cond_3

    .line 187
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v8, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v9, v1, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v1, v10}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 188
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v0, :cond_2

    .line 189
    const/4 v2, 0x1

    .line 190
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v3, v0

    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    move-object v4, v0

    .line 195
    :cond_3
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 196
    invoke-static {v6}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 198
    if-eqz v7, :cond_4

    .line 199
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v5, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v5, v7}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 201
    :cond_4
    if-eqz v2, :cond_5

    .line 202
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v5, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v5, v3}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 204
    :cond_5
    if-eqz v3, :cond_6

    .line 206
    return-object v3

    .line 210
    :cond_6
    const/4 v0, 0x0

    .line 211
    .local v0, "newRouteSelection":Z
    if-nez v4, :cond_8

    iget-object v5, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    .line 212
    :cond_7
    const/4 v0, 0x1

    .line 213
    iget-object v5, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    invoke-virtual {v5}, Lokhttp3/internal/connection/RouteSelector;->next()Lokhttp3/internal/connection/RouteSelector$Selection;

    move-result-object v5

    iput-object v5, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    move v8, v0

    goto :goto_2

    .line 216
    :cond_8
    move v8, v0

    .end local v0    # "newRouteSelection":Z
    .local v8, "newRouteSelection":Z
    :goto_2
    iget-object v9, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v9

    .line 217
    :try_start_1
    iget-boolean v0, v1, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    if-nez v0, :cond_f

    .line 219
    if-eqz v8, :cond_a

    .line 222
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->getAll()Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "size":I
    :goto_3
    if-ge v5, v10, :cond_a

    .line 224
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/Route;

    .line 225
    .local v11, "route":Lokhttp3/Route;
    sget-object v12, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v13, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v14, v1, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v12, v13, v14, v1, v11}, Lokhttp3/internal/Internal;->get(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;Lokhttp3/Route;)Lokhttp3/internal/connection/RealConnection;

    .line 226
    iget-object v12, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v12, :cond_9

    .line 227
    const/4 v2, 0x1

    .line 228
    iget-object v12, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v3, v12

    .line 229
    iput-object v11, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 230
    goto :goto_4

    .line 223
    .end local v11    # "route":Lokhttp3/Route;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 235
    .end local v0    # "routes":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Route;>;"
    .end local v5    # "i":I
    .end local v10    # "size":I
    :cond_a
    :goto_4
    if-nez v2, :cond_c

    .line 236
    if-nez v4, :cond_b

    .line 237
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->next()Lokhttp3/Route;

    move-result-object v0

    move-object v4, v0

    .line 242
    :cond_b
    iput-object v4, v1, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 243
    const/4 v0, 0x0

    iput v0, v1, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 244
    new-instance v5, Lokhttp3/internal/connection/RealConnection;

    iget-object v10, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-direct {v5, v10, v4}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/ConnectionPool;Lokhttp3/Route;)V

    move-object v3, v5

    .line 245
    invoke-virtual {v1, v3, v0}, Lokhttp3/internal/connection/StreamAllocation;->acquire(Lokhttp3/internal/connection/RealConnection;Z)V

    .line 247
    :cond_c
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 250
    if-eqz v2, :cond_d

    .line 251
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v5, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v5, v3}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 252
    return-object v3

    .line 256
    :cond_d
    iget-object v15, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    move-object v10, v3

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lokhttp3/internal/connection/RealConnection;->connect(IIIZLokhttp3/Call;Lokhttp3/EventListener;)V

    .line 258
    invoke-direct/range {p0 .. p0}, Lokhttp3/internal/connection/StreamAllocation;->routeDatabase()Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v5

    invoke-virtual {v0, v5}, Lokhttp3/internal/connection/RouteDatabase;->connected(Lokhttp3/Route;)V

    .line 260
    const/4 v5, 0x0

    .line 261
    .local v5, "socket":Ljava/net/Socket;
    iget-object v10, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v10

    .line 262
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, v1, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 265
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v9, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v9, v3}, Lokhttp3/internal/Internal;->put(Lokhttp3/ConnectionPool;Lokhttp3/internal/connection/RealConnection;)V

    .line 269
    invoke-virtual {v3}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 270
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v9, v1, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    iget-object v11, v1, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v0, v9, v11, v1}, Lokhttp3/internal/Internal;->deduplicate(Lokhttp3/ConnectionPool;Lokhttp3/Address;Lokhttp3/internal/connection/StreamAllocation;)Ljava/net/Socket;

    move-result-object v0

    move-object v5, v0

    .line 271
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    move-object v3, v0

    .line 273
    :cond_e
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 274
    invoke-static {v5}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 276
    iget-object v0, v1, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v9, v1, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v9, v3}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 277
    return-object v3

    .line 273
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 217
    .end local v5    # "socket":Ljava/net/Socket;
    :cond_f
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Canceled"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .end local v4    # "selectedRoute":Lokhttp3/Route;
    .end local v6    # "toClose":Ljava/net/Socket;
    .end local v7    # "releasedConnection":Lokhttp3/Connection;
    .end local v8    # "newRouteSelection":Z
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 247
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v4    # "selectedRoute":Lokhttp3/Route;
    .restart local v6    # "toClose":Ljava/net/Socket;
    .restart local v7    # "releasedConnection":Lokhttp3/Connection;
    .restart local v8    # "newRouteSelection":Z
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 169
    .end local v6    # "toClose":Ljava/net/Socket;
    .end local v7    # "releasedConnection":Lokhttp3/Connection;
    .end local v8    # "newRouteSelection":Z
    :cond_10
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .end local v4    # "selectedRoute":Lokhttp3/Route;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 168
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v4    # "selectedRoute":Lokhttp3/Route;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "codec != null"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .end local v4    # "selectedRoute":Lokhttp3/Route;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 167
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v4    # "selectedRoute":Lokhttp3/Route;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v6, "released"

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "foundPooledConnection":Z
    .end local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .end local v4    # "selectedRoute":Lokhttp3/Route;
    .end local p1    # "connectTimeout":I
    .end local p2    # "readTimeout":I
    .end local p3    # "writeTimeout":I
    .end local p4    # "connectionRetryEnabled":Z
    throw v0

    .line 195
    .restart local v2    # "foundPooledConnection":Z
    .restart local v3    # "result":Lokhttp3/internal/connection/RealConnection;
    .restart local v4    # "selectedRoute":Lokhttp3/Route;
    .restart local p1    # "connectTimeout":I
    .restart local p2    # "readTimeout":I
    .restart local p3    # "writeTimeout":I
    .restart local p4    # "connectionRetryEnabled":Z
    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    return-void
.end method

.method private findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;
    .locals 3
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionRetryEnabled"    # Z
    .param p5, "doExtensiveHealthChecks"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/internal/connection/StreamAllocation;->findConnection(IIIZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 138
    .local v0, "candidate":Lokhttp3/internal/connection/RealConnection;
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 139
    :try_start_0
    iget v2, v0, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_0

    .line 140
    monitor-exit v1

    return-object v0

    .line 142
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {v0, p5}, Lokhttp3/internal/connection/RealConnection;->isHealthy(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 148
    goto :goto_0

    .line 151
    :cond_1
    return-object v0

    .line 142
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    return-void
.end method

.method private release(Lokhttp3/internal/connection/RealConnection;)V
    .locals 4
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 474
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 475
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 476
    iget-object v3, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 477
    return-void

    .line 473
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    return-void
.end method

.method private releaseIfNoNewStreams()Ljava/net/Socket;
    .locals 3

    .line 287
    nop

    .line 288
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 289
    .local v0, "allocatedConnection":Lokhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lokhttp3/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    return-object v1

    .line 292
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private routeDatabase()Lokhttp3/internal/connection/RouteDatabase;
    .locals 2

    .line 332
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    invoke-virtual {v0, v1}, Lokhttp3/internal/Internal;->routeDatabase(Lokhttp3/ConnectionPool;)Lokhttp3/internal/connection/RouteDatabase;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquire(Lokhttp3/internal/connection/RealConnection;Z)V
    .locals 3
    .param p1, "connection"    # Lokhttp3/internal/connection/RealConnection;
    .param p2, "reportedAcquired"    # Z

    .line 463
    nop

    .line 464
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v0, :cond_0

    .line 466
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 467
    iput-boolean p2, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    .line 468
    iget-object v0, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    new-instance v1, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->callStackTrace:Ljava/lang/Object;

    invoke-direct {v1, p0, v2}, Lokhttp3/internal/connection/StreamAllocation$StreamAllocationReference;-><init>(Lokhttp3/internal/connection/StreamAllocation;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    return-void

    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public cancel()V
    .locals 3

    .line 406
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 407
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lokhttp3/internal/connection/StreamAllocation;->canceled:Z

    .line 408
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 409
    .local v1, "codecToCancel":Lokhttp3/internal/http/HttpCodec;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 410
    .local v2, "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v1, :cond_0

    .line 412
    invoke-interface {v1}, Lokhttp3/internal/http/HttpCodec;->cancel()V

    goto :goto_0

    .line 413
    :cond_0
    if-eqz v2, :cond_1

    .line 414
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->cancel()V

    .line 416
    :cond_1
    :goto_0
    return-void

    .line 410
    .end local v1    # "codecToCancel":Lokhttp3/internal/http/HttpCodec;
    .end local v2    # "connectionToCancel":Lokhttp3/internal/connection/RealConnection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public codec()Lokhttp3/internal/http/HttpCodec;
    .locals 2

    .line 326
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    monitor-exit v0

    return-object v1

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized connection()Lokhttp3/internal/connection/RealConnection;
    .locals 1

    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lokhttp3/internal/connection/StreamAllocation;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasMoreRoutes()Z
    .locals 1

    .line 507
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-nez v0, :cond_2

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelection:Lokhttp3/internal/connection/RouteSelector$Selection;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector$Selection;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    .line 509
    invoke-virtual {v0}, Lokhttp3/internal/connection/RouteSelector;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 507
    :goto_1
    return v0
.end method

.method public newStream(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/HttpCodec;
    .locals 10
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "chain"    # Lokhttp3/Interceptor$Chain;
    .param p3, "doExtensiveHealthChecks"    # Z

    .line 107
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->connectTimeoutMillis()I

    move-result v6

    .line 108
    .local v6, "connectTimeout":I
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v7

    .line 109
    .local v7, "readTimeout":I
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v8

    .line 110
    .local v8, "writeTimeout":I
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v9

    .line 113
    .local v9, "connectionRetryEnabled":Z
    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/StreamAllocation;->findHealthyConnection(IIIZZ)Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 115
    .local v0, "resultConnection":Lokhttp3/internal/connection/RealConnection;
    invoke-virtual {v0, p1, p2, p0}, Lokhttp3/internal/connection/RealConnection;->newCodec(Lokhttp3/OkHttpClient;Lokhttp3/Interceptor$Chain;Lokhttp3/internal/connection/StreamAllocation;)Lokhttp3/internal/http/HttpCodec;

    move-result-object v1

    .line 117
    .local v1, "resultCodec":Lokhttp3/internal/http/HttpCodec;
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iput-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    .line 119
    monitor-exit v2

    return-object v1

    .line 120
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "connectTimeout":I
    .end local v7    # "readTimeout":I
    .end local v8    # "writeTimeout":I
    .end local v9    # "connectionRetryEnabled":Z
    .end local p1    # "client":Lokhttp3/OkHttpClient;
    .end local p2    # "chain":Lokhttp3/Interceptor$Chain;
    .end local p3    # "doExtensiveHealthChecks":Z
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    .end local v0    # "resultConnection":Lokhttp3/internal/connection/RealConnection;
    .end local v1    # "resultCodec":Lokhttp3/internal/http/HttpCodec;
    .restart local v6    # "connectTimeout":I
    .restart local v7    # "readTimeout":I
    .restart local v8    # "writeTimeout":I
    .restart local v9    # "connectionRetryEnabled":Z
    .restart local p1    # "client":Lokhttp3/OkHttpClient;
    .restart local p2    # "chain":Lokhttp3/Interceptor$Chain;
    .restart local p3    # "doExtensiveHealthChecks":Z
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public noNewStreams()V
    .locals 4

    .line 357
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 359
    .local v1, "releasedConnection":Lokhttp3/Connection;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 360
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 361
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 363
    if-eqz v1, :cond_1

    .line 364
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v3, v1}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 366
    :cond_1
    return-void

    .line 361
    .end local v1    # "releasedConnection":Lokhttp3/Connection;
    .end local v2    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    .line 342
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 344
    .local v1, "releasedConnection":Lokhttp3/Connection;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2, v3}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v2

    .line 345
    .local v2, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 346
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 348
    if-eqz v1, :cond_1

    .line 349
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v3, v1}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 351
    :cond_1
    return-void

    .line 346
    .end local v1    # "releasedConnection":Lokhttp3/Connection;
    .end local v2    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseAndAcquire(Lokhttp3/internal/connection/RealConnection;)Ljava/net/Socket;
    .locals 3
    .param p1, "newConnection"    # Lokhttp3/internal/connection/RealConnection;

    .line 492
    nop

    .line 493
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 497
    .local v0, "onlyAllocation":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    invoke-direct {p0, v1, v2, v2}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 500
    .local v1, "socket":Ljava/net/Socket;
    iput-object p1, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 501
    iget-object v2, p1, Lokhttp3/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-object v1

    .line 493
    .end local v0    # "onlyAllocation":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lokhttp3/internal/connection/StreamAllocation;>;"
    .end local v1    # "socket":Ljava/net/Socket;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public streamFailed(Ljava/io/IOException;)V
    .locals 7
    .param p1, "e"    # Ljava/io/IOException;

    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, "noNewStreams":Z
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v1

    .line 424
    :try_start_0
    instance-of v2, p1, Lokhttp3/internal/http2/StreamResetException;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 425
    move-object v2, p1

    check-cast v2, Lokhttp3/internal/http2/StreamResetException;

    .line 426
    .local v2, "streamResetException":Lokhttp3/internal/http2/StreamResetException;
    iget-object v5, v2, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v5, v6, :cond_0

    .line 427
    iget v5, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    .line 431
    :cond_0
    iget-object v5, v2, Lokhttp3/internal/http2/StreamResetException;->errorCode:Lokhttp3/internal/http2/ErrorCode;

    sget-object v6, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    if-ne v5, v6, :cond_1

    iget v5, p0, Lokhttp3/internal/connection/StreamAllocation;->refusedStreamCount:I

    if-le v5, v4, :cond_2

    .line 432
    :cond_1
    const/4 v0, 0x1

    .line 433
    iput-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 435
    .end local v2    # "streamResetException":Lokhttp3/internal/http2/StreamResetException;
    :cond_2
    goto :goto_0

    :cond_3
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 436
    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v2, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v2, :cond_6

    .line 437
    :cond_4
    const/4 v0, 0x1

    .line 440
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v2, v2, Lokhttp3/internal/connection/RealConnection;->successCount:I

    if-nez v2, :cond_6

    .line 441
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 442
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->routeSelector:Lokhttp3/internal/connection/RouteSelector;

    iget-object v5, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    invoke-virtual {v2, v5, p1}, Lokhttp3/internal/connection/RouteSelector;->connectFailed(Lokhttp3/Route;Ljava/io/IOException;)V

    .line 444
    :cond_5
    iput-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->route:Lokhttp3/Route;

    .line 447
    :cond_6
    :goto_0
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 448
    .local v2, "releasedConnection":Lokhttp3/Connection;
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v4}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v3

    .line 449
    .local v3, "socket":Ljava/net/Socket;
    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lokhttp3/internal/connection/StreamAllocation;->reportedAcquired:Z

    if-nez v4, :cond_8

    :cond_7
    const/4 v2, 0x0

    .line 450
    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 453
    if-eqz v2, :cond_9

    .line 454
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v1, v4, v2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 456
    :cond_9
    return-void

    .line 450
    .end local v2    # "releasedConnection":Lokhttp3/Connection;
    .end local v3    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    return-void
.end method

.method public streamFinished(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V
    .locals 5
    .param p1, "noNewStreams"    # Z
    .param p2, "codec"    # Lokhttp3/internal/http/HttpCodec;
    .param p3, "bytesRead"    # J
    .param p5, "e"    # Ljava/io/IOException;

    .line 296
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v1, p3, p4}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 301
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->connectionPool:Lokhttp3/ConnectionPool;

    monitor-enter v0

    .line 302
    if-eqz p2, :cond_5

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    if-ne p2, v1, :cond_5

    .line 305
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 306
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    iget v3, v2, Lokhttp3/internal/connection/RealConnection;->successCount:I

    add-int/2addr v3, v1

    iput v3, v2, Lokhttp3/internal/connection/RealConnection;->successCount:I

    .line 308
    :cond_0
    iget-object v2, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    .line 309
    .local v2, "releasedConnection":Lokhttp3/Connection;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v1}, Lokhttp3/internal/connection/StreamAllocation;->deallocate(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 310
    .local v1, "socket":Ljava/net/Socket;
    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->connection:Lokhttp3/internal/connection/RealConnection;

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 311
    :cond_1
    iget-boolean v3, p0, Lokhttp3/internal/connection/StreamAllocation;->released:Z

    .line 312
    .local v3, "callEnd":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 314
    if-eqz v2, :cond_2

    .line 315
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v4, v2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 318
    :cond_2
    if-eqz p5, :cond_3

    .line 319
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v4, p5}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 320
    :cond_3
    if-eqz v3, :cond_4

    .line 321
    iget-object v0, p0, Lokhttp3/internal/connection/StreamAllocation;->eventListener:Lokhttp3/EventListener;

    iget-object v4, p0, Lokhttp3/internal/connection/StreamAllocation;->call:Lokhttp3/Call;

    invoke-virtual {v0, v4}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 323
    :cond_4
    :goto_0
    return-void

    .line 303
    .end local v1    # "socket":Ljava/net/Socket;
    .end local v2    # "releasedConnection":Lokhttp3/Connection;
    .end local v3    # "callEnd":Z
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lokhttp3/internal/connection/StreamAllocation;->codec:Lokhttp3/internal/http/HttpCodec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "noNewStreams":Z
    .end local p2    # "codec":Lokhttp3/internal/http/HttpCodec;
    .end local p3    # "bytesRead":J
    .end local p5    # "e":Ljava/io/IOException;
    throw v1

    .line 312
    .restart local p1    # "noNewStreams":Z
    .restart local p2    # "codec":Lokhttp3/internal/http/HttpCodec;
    .restart local p3    # "bytesRead":J
    .restart local p5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 513
    invoke-virtual {p0}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v0

    .line 514
    .local v0, "connection":Lokhttp3/internal/connection/RealConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnection;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lokhttp3/internal/connection/StreamAllocation;->address:Lokhttp3/Address;

    invoke-virtual {v1}, Lokhttp3/Address;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method
