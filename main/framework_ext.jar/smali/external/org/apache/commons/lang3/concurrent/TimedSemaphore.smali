.class public Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;
.super Ljava/lang/Object;
.source "TimedSemaphore.java"


# static fields
.field public static final NO_LIMIT:I = 0x0

.field private static final THREAD_POOL_SIZE:I = 0x1


# instance fields
.field private acquireCount:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private lastCallsPerPeriod:I

.field private limit:I

.field private final ownExecutor:Z

.field private final period:J

.field private periodCount:J

.field private shutdown:Z

.field private task:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private totalAcquireCount:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .registers 11
    .param p1    # J
    .param p3    # Ljava/util/concurrent/TimeUnit;
    .param p4    # I

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V
    .registers 11
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p2    # J
    .param p4    # Ljava/util/concurrent/TimeUnit;
    .param p5    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_13

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Time period must be greater 0!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iput-wide p2, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->period:J

    iput-object p4, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz p1, :cond_21

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean v3, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->ownExecutor:Z

    :goto_1d
    invoke-virtual {p0, p5}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->setLimit(I)V

    return-void

    :cond_21
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean v4, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->ownExecutor:Z

    goto :goto_1d
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TimedSemaphore is shut down!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_12
    :try_start_12
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->startTimer()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    :cond_1c
    const/4 v0, 0x0

    :cond_1d
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getLimit()I

    move-result v1

    if-lez v1, :cond_2b

    iget v1, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getLimit()I

    move-result v2

    if-ge v1, v2, :cond_35

    :cond_2b
    const/4 v0, 0x1

    :goto_2c
    if-nez v0, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_f

    :goto_31
    if-eqz v0, :cond_1d

    monitor-exit p0

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_2c

    :cond_37
    :try_start_37
    iget v1, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_f

    goto :goto_31
.end method

.method declared-synchronized endOfPeriod()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    iput v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->lastCallsPerPeriod:I

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->totalAcquireCount:J

    iget v2, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->totalAcquireCount:J

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->periodCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->periodCount:J

    const/4 v0, 0x0

    iput v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAcquireCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->acquireCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailablePermits()I
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getAcquireCount()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAverageCallsPerPeriod()D
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->periodCount:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const-wide/16 v0, 0x0

    :goto_b
    monitor-exit p0

    return-wide v0

    :cond_d
    :try_start_d
    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->totalAcquireCount:J

    long-to-double v0, v0

    iget-wide v2, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->periodCount:J
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_15

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_b

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public declared-synchronized getLastAcquiresPerPeriod()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->lastCallsPerPeriod:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLimit()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->limit:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriod()J
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->period:J

    return-wide v0
.end method

.method public getUnit()Ljava/util/concurrent/TimeUnit;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public declared-synchronized isShutdown()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->shutdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLimit(I)V
    .registers 3
    .param p1    # I

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->limit:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->shutdown:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->ownExecutor:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_10
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->shutdown:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startTimer()Ljava/util/concurrent/ScheduledFuture;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore$1;

    invoke-direct {v1, p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore$1;-><init>(Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;)V

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getPeriod()J

    move-result-wide v2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getPeriod()J

    move-result-wide v4

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/TimedSemaphore;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
