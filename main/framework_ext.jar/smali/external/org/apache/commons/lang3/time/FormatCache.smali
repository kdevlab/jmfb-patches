.class abstract Lexternal/org/apache/commons/lang3/time/FormatCache;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/text/Format;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NONE:I = -0x1


# instance fields
.field private final cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cInstanceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected abstract createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation
.end method

.method public getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 13
    .param p1    # Ljava/lang/Integer;
    .param p2    # Ljava/lang/Integer;
    .param p3    # Ljava/util/TimeZone;
    .param p4    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    if-nez p4, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    :cond_6
    new-instance v2, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p4, v5, v6

    invoke-direct {v2, v5}, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;-><init>([Ljava/lang/Object;)V

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_3c

    if-nez p1, :cond_41

    :try_start_23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, p4}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    :goto_2b
    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/time/FormatCache;->cDateTimeInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_23 .. :try_end_39} :catch_59

    if-eqz v4, :cond_3c

    move-object v3, v4

    :cond_3c
    invoke-virtual {p0, v3, p3, p4}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v5

    return-object v5

    :cond_41
    if-nez p2, :cond_4c

    :try_start_43
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, p4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    goto :goto_2b

    :cond_4c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6, p4}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_57} :catch_59

    move-result-object v1

    goto :goto_2b

    :catch_59
    move-exception v0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No date time pattern for locale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getInstance()Ljava/text/Format;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/util/TimeZone;
    .param p3    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TimeZone;",
            "Ljava/util/Locale;",
            ")TF;"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "pattern must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    if-nez p2, :cond_10

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    :cond_10
    if-nez p3, :cond_16

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    :cond_16
    new-instance v1, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-direct {v1, v3}, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;-><init>([Ljava/lang/Object;)V

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    if-nez v0, :cond_40

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/time/FormatCache;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FormatCache;->cInstanceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    if-eqz v2, :cond_40

    move-object v0, v2

    :cond_40
    return-object v0
.end method
