.class Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;
.super Ljava/lang/Object;
.source "DateUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field private final endFinal:Ljava/util/Calendar;

.field private final spot:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 6
    .param p1    # Ljava/util/Calendar;
    .param p2    # Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->next()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Calendar;
    .registers 4

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->endFinal:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;->spot:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
