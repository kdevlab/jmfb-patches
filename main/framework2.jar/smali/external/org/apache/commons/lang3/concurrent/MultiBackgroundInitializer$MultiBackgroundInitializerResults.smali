.class public Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;
.super Ljava/lang/Object;
.source "MultiBackgroundInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiBackgroundInitializerResults"
.end annotation


# instance fields
.field private final exceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;"
        }
    .end annotation
.end field

.field private final initializers:Ljava/util/Map;
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

.field private final resultObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    iput-object p2, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->resultObjects:Ljava/util/Map;

    iput-object p3, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$1;)V
    .registers 5
    .param p1    # Ljava/util/Map;
    .param p2    # Ljava/util/Map;
    .param p3    # Ljava/util/Map;
    .param p4    # Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$1;

    invoke-direct {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private checkName(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;
    .registers 6
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer",
            "<*>;"
        }
    .end annotation

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    if-nez v0, :cond_23

    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No child initializer with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_23
    return-object v0
.end method


# virtual methods
.method public getException(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/concurrent/ConcurrentException;

    return-object v0
.end method

.method public getInitializer(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;
    .registers 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer",
            "<*>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    move-result-object v0

    return-object v0
.end method

.method public getResultObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->resultObjects:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public initializerNames()Ljava/util/Set;
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

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->initializers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isException(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->checkName(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/concurrent/BackgroundInitializer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccessful()Z
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/concurrent/MultiBackgroundInitializer$MultiBackgroundInitializerResults;->exceptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
