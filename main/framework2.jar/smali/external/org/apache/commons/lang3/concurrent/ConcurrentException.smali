.class public Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
.super Ljava/lang/Exception;
.source "ConcurrentException.java"


# static fields
.field private static final serialVersionUID:J = 0x5be89589f59f3c52L


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Throwable;

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1    # Ljava/lang/Throwable;

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentUtils;->checkedException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
