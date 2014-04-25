.class public Lexternal/org/apache/commons/lang3/exception/ContextedException;
.super Ljava/lang/Exception;
.source "ContextedException.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/exception/ExceptionContext;


# static fields
.field private static final serialVersionUID:J = 0x132dd72L


# instance fields
.field private final exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    new-instance v0, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Throwable;

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lexternal/org/apache/commons/lang3/exception/ExceptionContext;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Throwable;
    .param p3    # Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-nez p3, :cond_a

    new-instance p3, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {p3}, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    :cond_a
    iput-object p3, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3
    .param p1    # Ljava/lang/Throwable;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/exception/DefaultExceptionContext;-><init>()V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    return-void
.end method


# virtual methods
.method public addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ContextedException;
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lexternal/org/apache/commons/lang3/exception/ExceptionContext;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ExceptionContext;
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/exception/ContextedException;->addContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ContextedException;

    move-result-object v0

    return-object v0
.end method

.method public getContextEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lexternal/org/apache/commons/lang3/tuple/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lexternal/org/apache/commons/lang3/exception/ExceptionContext;->getContextEntries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContextLabels()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0}, Lexternal/org/apache/commons/lang3/exception/ExceptionContext;->getContextLabels()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getContextValues(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lexternal/org/apache/commons/lang3/exception/ExceptionContext;->getContextValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lexternal/org/apache/commons/lang3/exception/ExceptionContext;->getFirstContextValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1}, Lexternal/org/apache/commons/lang3/exception/ExceptionContext;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/exception/ContextedException;->getFormattedExceptionMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawMessage()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ContextedException;
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/exception/ContextedException;->exceptionContext:Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    invoke-interface {v0, p1, p2}, Lexternal/org/apache/commons/lang3/exception/ExceptionContext;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ExceptionContext;

    return-object p0
.end method

.method public bridge synthetic setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ExceptionContext;
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/exception/ContextedException;->setContextValue(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/exception/ContextedException;

    move-result-object v0

    return-object v0
.end method
