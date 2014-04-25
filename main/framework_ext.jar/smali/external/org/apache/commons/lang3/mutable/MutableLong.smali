.class public Lexternal/org/apache/commons/lang3/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/mutable/Mutable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lexternal/org/apache/commons/lang3/mutable/MutableLong;",
        ">;",
        "Lexternal/org/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1    # J

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method


# virtual methods
.method public add(J)V
    .registers 5
    .param p1    # J

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 6
    .param p1    # Ljava/lang/Number;

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableLong;)I
    .registers 6
    .param p1    # Lexternal/org/apache/commons/lang3/mutable/MutableLong;

    iget-wide v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_a

    const/4 v2, -0x1

    :goto_9
    return v2

    :cond_a
    iget-wide v2, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_9

    :cond_12
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableLong;)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 5

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public doubleValue()D
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lexternal/org/apache/commons/lang3/mutable/MutableLong;

    if-eqz v1, :cond_12

    iget-wide v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public floatValue()F
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Long;
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .registers 5

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public intValue()I
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .registers 3
    .param p1    # J

    iput-wide p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(J)V
    .registers 5
    .param p1    # J

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 6
    .param p1    # Ljava/lang/Number;

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .registers 3

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
