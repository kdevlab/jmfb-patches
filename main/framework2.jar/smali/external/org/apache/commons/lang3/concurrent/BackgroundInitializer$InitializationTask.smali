.class Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;
.super Ljava/lang/Object;
.source "BackgroundInitializer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final execFinally:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;


# direct methods
.method public constructor <init>(Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p2    # Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 3
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

    :try_start_0
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->this$0:Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;->initialize()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_10

    move-result-object v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_f
    return-object v0

    :catchall_10
    move-exception v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer$InitializationTask;->execFinally:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1a
    throw v0
.end method
