.class public Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
.super Ljava/lang/Object;
.source "BasicThreadFactory.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/Builder",
        "<",
        "Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private daemonFlag:Ljava/lang/Boolean;

.field private exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private namingPattern:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;

.field private wrappedFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/util/concurrent/ThreadFactory;
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method static synthetic access$100(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/String;
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Integer;
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$300(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Boolean;
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public build()Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;
    .registers 3

    new-instance v0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;-><init>(Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$1;)V

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->reset()V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->build()Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public daemon(Z)Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 3
    .param p1    # Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public namingPattern(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Naming pattern must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    return-object p0
.end method

.method public priority(I)Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 3
    .param p1    # I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    return-object p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->namingPattern:Ljava/lang/String;

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->priority:Ljava/lang/Integer;

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->daemonFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public uncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 4
    .param p1    # Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uncaught exception handler must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->exceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public wrappedFactory(Ljava/util/concurrent/ThreadFactory;)Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;
    .registers 4
    .param p1    # Ljava/util/concurrent/ThreadFactory;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Wrapped ThreadFactory must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/BasicThreadFactory$Builder;->wrappedFactory:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method
