.class public Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;
.super Ljava/lang/Object;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 4
    .param p0    # Ljava/lang/Throwable;

    if-eqz p0, :cond_b

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_b

    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a checked exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static constantFuture(Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils$ConstantFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;TK;",
            "Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    if-eqz p0, :cond_4

    if-nez p2, :cond_6

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p2}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public static createIfAbsentUnchecked(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;TK;",
            "Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer",
            "<TV;>;)TV;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->createIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    :try_end_3
    .catch Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    new-instance v1, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static extractCause(Ljava/util/concurrent/ExecutionException;)Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
    .registers 4
    .param p0    # Ljava/util/concurrent/ExecutionException;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->throwCause(Ljava/util/concurrent/ExecutionException;)V

    new-instance v0, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;
    .registers 4
    .param p0    # Ljava/util/concurrent/ExecutionException;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->throwCause(Ljava/util/concurrent/ExecutionException;)V

    new-instance v0, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static handleCause(Ljava/util/concurrent/ExecutionException;)V
    .registers 2
    .param p0    # Ljava/util/concurrent/ExecutionException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->extractCause(Ljava/util/concurrent/ExecutionException;)Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;

    move-result-object v0

    if-eqz v0, :cond_7

    throw v0

    :cond_7
    return-void
.end method

.method public static handleCauseUnchecked(Ljava/util/concurrent/ExecutionException;)V
    .registers 2
    .param p0    # Ljava/util/concurrent/ExecutionException;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->extractCauseUnchecked(Ljava/util/concurrent/ExecutionException;)Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    move-result-object v0

    if-eqz v0, :cond_7

    throw v0

    :cond_7
    return-void
.end method

.method public static initialize(Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static initializeUnchecked(Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->initialize(Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;)Ljava/lang/Object;
    :try_end_3
    .catch Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    new-instance v1, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static putIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, p2

    goto :goto_3
.end method

.method private static throwCause(Ljava/util/concurrent/ExecutionException;)V
    .registers 2
    .param p0    # Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_f
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1e
    return-void
.end method
