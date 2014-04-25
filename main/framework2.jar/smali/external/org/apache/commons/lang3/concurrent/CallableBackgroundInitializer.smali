.class public Lexternal/org/apache/commons/lang3/concurrent/CallableBackgroundInitializer;
.super Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;
.source "CallableBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>()V

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->checkCallable(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p2    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Ljava/util/concurrent/ExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->checkCallable(Ljava/util/concurrent/Callable;)V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private checkCallable(Ljava/util/concurrent/Callable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callable must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    return-void
.end method


# virtual methods
.method protected initialize()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/CallableBackgroundInitializer;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
