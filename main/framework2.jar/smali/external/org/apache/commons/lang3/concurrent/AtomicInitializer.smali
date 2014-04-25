.class public abstract Lexternal/org/apache/commons/lang3/concurrent/AtomicInitializer;
.super Ljava/lang/Object;
.source "AtomicInitializer.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/concurrent/ConcurrentInitializer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final reference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/concurrent/AtomicInitializer;->initialize()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/AtomicInitializer;->reference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_1b
    return-object v0
.end method

.method protected abstract initialize()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
        }
    .end annotation
.end method
