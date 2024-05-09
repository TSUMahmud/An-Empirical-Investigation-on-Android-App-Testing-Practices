.class public final Lrx/internal/producers/ProducerArbiter;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Lrx/Producer;


# static fields
.field static final NULL_PRODUCER:Lrx/Producer;


# instance fields
.field currentProducer:Lrx/Producer;

.field emitting:Z

.field missedProduced:J

.field missedProducer:Lrx/Producer;

.field missedRequested:J

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lrx/internal/producers/ProducerArbiter$1;

    invoke-direct {v0}, Lrx/internal/producers/ProducerArbiter$1;-><init>()V

    sput-object v0, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitLoop()V
    .locals 15

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v7, v0

    move-wide v3, v1

    move-wide v5, v3

    .line 145
    :goto_0
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide v3, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 147
    .local v3, "localRequested":J
    :try_start_1
    iget-wide v5, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .local v5, "localProduced":J
    :try_start_2
    iget-object v7, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 149
    .local v7, "localProducer":Lrx/Producer;
    cmp-long v8, v3, v1

    if-nez v8, :cond_0

    cmp-long v8, v5, v1

    if-nez v8, :cond_0

    if-nez v7, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    iput-wide v1, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 156
    iput-wide v1, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 157
    iput-object v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 158
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 160
    iget-wide v8, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 162
    .local v8, "r":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v12, v8, v10

    if-eqz v12, :cond_4

    .line 163
    add-long v12, v8, v3

    .line 164
    .local v12, "u":J
    cmp-long v14, v12, v1

    if-ltz v14, :cond_3

    cmp-long v14, v12, v10

    if-nez v14, :cond_1

    goto :goto_1

    .line 168
    :cond_1
    sub-long v10, v12, v5

    .line 169
    .local v10, "v":J
    cmp-long v14, v10, v1

    if-ltz v14, :cond_2

    .line 172
    move-wide v8, v10

    .line 173
    iput-wide v10, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    goto :goto_2

    .line 170
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "more produced than requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    .end local v10    # "v":J
    :cond_3
    :goto_1
    const-wide v8, 0x7fffffffffffffffL

    .line 166
    iput-wide v8, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 176
    .end local v12    # "u":J
    :cond_4
    :goto_2
    if-eqz v7, :cond_6

    .line 177
    sget-object v10, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    if-ne v7, v10, :cond_5

    .line 178
    iput-object v0, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    goto :goto_3

    .line 180
    :cond_5
    iput-object v7, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 181
    invoke-interface {v7, v8, v9}, Lrx/Producer;->request(J)V

    goto :goto_3

    .line 184
    :cond_6
    iget-object v10, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 185
    .local v10, "p":Lrx/Producer;
    if-eqz v10, :cond_7

    cmp-long v11, v3, v1

    if-eqz v11, :cond_7

    .line 186
    invoke-interface {v10, v3, v4}, Lrx/Producer;->request(J)V

    .line 189
    .end local v3    # "localRequested":J
    .end local v5    # "localProduced":J
    .end local v7    # "localProducer":Lrx/Producer;
    .end local v8    # "r":J
    .end local v10    # "p":Lrx/Producer;
    :cond_7
    :goto_3
    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    .restart local v5    # "localProduced":J
    goto :goto_4

    .end local v5    # "localProduced":J
    :catchall_1
    move-exception v0

    .restart local v3    # "localRequested":J
    .restart local v5    # "localProduced":J
    .restart local v7    # "localProducer":Lrx/Producer;
    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_4
.end method

.method public produced(J)V
    .locals 9
    .param p1, "n"    # J

    .line 81
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v2, :cond_0

    .line 86
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProduced:J

    .line 87
    monitor-exit p0

    return-void

    .line 89
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 92
    const/4 v2, 0x0

    .line 94
    .local v2, "skipFinal":Z
    const/4 v3, 0x0

    :try_start_1
    iget-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 95
    .local v4, "r":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 96
    sub-long v6, v4, p1

    .line 97
    .local v6, "u":J
    cmp-long v8, v6, v0

    if-ltz v8, :cond_1

    .line 100
    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "more items arrived than were requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "skipFinal":Z
    .end local p1    # "n":J
    throw v0

    .line 103
    .end local v6    # "u":J
    .restart local v2    # "skipFinal":Z
    .restart local p1    # "n":J
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    const/4 v0, 0x1

    .line 106
    .end local v2    # "skipFinal":Z
    .end local v4    # "r":J
    .local v0, "skipFinal":Z
    if-nez v0, :cond_3

    .line 107
    monitor-enter p0

    .line 108
    :try_start_2
    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 112
    :cond_3
    :goto_1
    return-void

    .line 106
    .end local v0    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :catchall_1
    move-exception v0

    if-nez v2, :cond_4

    .line 107
    monitor-enter p0

    .line 108
    :try_start_3
    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 109
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_4
    :goto_2
    throw v0

    .line 90
    .end local v2    # "skipFinal":Z
    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 82
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .line 42
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_6

    .line 45
    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v2, :cond_1

    .line 50
    iget-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lrx/internal/producers/ProducerArbiter;->missedRequested:J

    .line 51
    monitor-exit p0

    return-void

    .line 53
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 55
    const/4 v2, 0x0

    .line 57
    .local v2, "skipFinal":Z
    const/4 v3, 0x0

    :try_start_1
    iget-wide v4, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 58
    .local v4, "r":J
    add-long v6, v4, p1

    .line 59
    .local v6, "u":J
    cmp-long v8, v6, v0

    if-gez v8, :cond_2

    .line 60
    const-wide v6, 0x7fffffffffffffffL

    .line 62
    :cond_2
    iput-wide v6, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    .line 64
    iget-object v0, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 65
    .local v0, "p":Lrx/Producer;
    if-eqz v0, :cond_3

    .line 66
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 69
    :cond_3
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    const/4 v0, 0x1

    .line 72
    .end local v2    # "skipFinal":Z
    .end local v4    # "r":J
    .end local v6    # "u":J
    .local v0, "skipFinal":Z
    if-nez v0, :cond_4

    .line 73
    monitor-enter p0

    .line 74
    :try_start_2
    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 78
    :cond_4
    :goto_0
    return-void

    .line 72
    .end local v0    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :catchall_1
    move-exception v0

    if-nez v2, :cond_5

    .line 73
    monitor-enter p0

    .line 74
    :try_start_3
    iput-boolean v3, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 75
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_5
    :goto_1
    throw v0

    .line 54
    .end local v2    # "skipFinal":Z
    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 43
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 4
    .param p1, "newProducer"    # Lrx/Producer;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v0, :cond_1

    .line 117
    if-nez p1, :cond_0

    sget-object v0, Lrx/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lrx/Producer;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lrx/internal/producers/ProducerArbiter;->missedProducer:Lrx/Producer;

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 122
    const/4 v0, 0x0

    .line 124
    .local v0, "skipFinal":Z
    const/4 v1, 0x0

    :try_start_1
    iput-object p1, p0, Lrx/internal/producers/ProducerArbiter;->currentProducer:Lrx/Producer;

    .line 125
    if-eqz p1, :cond_2

    .line 126
    iget-wide v2, p0, Lrx/internal/producers/ProducerArbiter;->requested:J

    invoke-interface {p1, v2, v3}, Lrx/Producer;->request(J)V

    .line 129
    :cond_2
    invoke-virtual {p0}, Lrx/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    const/4 v0, 0x1

    .line 132
    if-nez v0, :cond_3

    .line 133
    monitor-enter p0

    .line 134
    :try_start_2
    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 138
    :cond_3
    :goto_1
    return-void

    .line 132
    :catchall_1
    move-exception v2

    if-nez v0, :cond_4

    .line 133
    monitor-enter p0

    .line 134
    :try_start_3
    iput-boolean v1, p0, Lrx/internal/producers/ProducerArbiter;->emitting:Z

    .line 135
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    :cond_4
    :goto_2
    throw v2

    .line 121
    .end local v0    # "skipFinal":Z
    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method
