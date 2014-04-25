.class public Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;
.super Ljava/lang/Object;
.source "BasicThreadFactory.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$1;,
        Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    }
.end annotation


# instance fields
.field private final daemonFlag:Ljava/lang/Boolean;

.field private final namingPattern:Ljava/lang/String;

.field private final priority:Ljava/lang/Integer;

.field private final threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)V
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->access$000(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    :goto_f
    # getter for: Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->access$100(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->namingPattern:Ljava/lang/String;

    # getter for: Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->access$200(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->priority:Ljava/lang/Integer;

    # getter for: Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->access$300(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->daemonFlag:Ljava/lang/Boolean;

    # getter for: Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->access$400(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    :cond_2f
    # getter for: Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->access$000(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    goto :goto_f
.end method

.method synthetic constructor <init>(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$1;)V
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .param p2    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$1;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;-><init>(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)V

    return-void
.end method

.method private initializeThread(Ljava/lang/Thread;)V
    .registers 6
    .param p1    # Ljava/lang/Thread;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getNamingPattern()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getNamingPattern()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_2e
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getPriority()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    :cond_3f
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getDaemonFlag()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getDaemonFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_50
    return-void
.end method


# virtual methods
.method public final getDaemonFlag()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->daemonFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getNamingPattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->namingPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriority()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method public getThreadCount()J
    .registers 3

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->threadCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public final getWrappedFactory()Ljava/util/concurrent/ThreadFactory;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 4
    .param p1    # Ljava/lang/Runnable;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->getWrappedFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;->initializeThread(Ljava/lang/Thread;)V

    return-object v0
.end method
