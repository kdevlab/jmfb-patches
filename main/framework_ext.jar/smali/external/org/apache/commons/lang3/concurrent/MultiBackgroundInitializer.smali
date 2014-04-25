.class public Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;
.super Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;
.source "MultiBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$1;,
        Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer",
        "<",
        "Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;",
        ">;"
    }
.end annotation


# instance fields
.field private final childInitializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1    # Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addInitializer(Ljava/lang/String;Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;)V
    .registers 5
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer",
            "<*>;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name of child initializer must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Child initializer must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    monitor-enter p0

    :try_start_15
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addInitializer() must not be called after start()!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    return-void
.end method

.method protected getTaskCount()I
    .registers 5

    const/4 v2, 0x1

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;->getTaskCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_b

    :cond_1d
    return v2
.end method

.method protected initialize()Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/util/HashMap;

    iget-object v8, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->childInitializers:Ljava/util/Map;

    invoke-direct {v6, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2e

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->getActiveExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_31

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;->getExternalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    if-nez v8, :cond_2a

    invoke-virtual {v0, v4}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;->setExternalExecutor(Ljava/util/concurrent/ExecutorService;)V

    :cond_2a
    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;->start()Z

    goto :goto_15

    :catchall_2e
    move-exception v8

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v8

    :cond_31
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_4f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v8}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;->get()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_4f .. :try_end_60} :catch_61

    goto :goto_43

    :catch_61
    move-exception v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_6a
    new-instance v8, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v7, v3, v9}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$1;)V

    return-object v8
.end method

.method protected bridge synthetic initialize()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;->initialize()Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;

    move-result-object v0

    return-object v0
.end method
