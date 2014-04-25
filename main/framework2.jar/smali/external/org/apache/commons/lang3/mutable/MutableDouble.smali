.class public Lexternal/org/apache/commons/lang3/mutable/MutableDouble;
.super Ljava/lang/Number;
.source "MutableDouble.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/mutable/Mutable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lexternal/org/apache/commons/lang3/mutable/MutableDouble;",
        ">;",
        "Lexternal/org/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 3
    .param p1    # D

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-wide p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

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

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method


# virtual methods
.method public add(D)V
    .registers 5
    .param p1    # D

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 6
    .param p1    # Ljava/lang/Number;

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableDouble;)I
    .registers 6
    .param p1    # Lexternal/org/apache/commons/lang3/mutable/MutableDouble;

    iget-wide v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    iget-wide v2, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableDouble;)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 5

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public doubleValue()D
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;

    if-eqz v0, :cond_18

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;

    iget-wide v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public floatValue()F
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Double;
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v2, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public increment()V
    .registers 5

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L

    add-double/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public intValue()I
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public setValue(D)V
    .registers 3
    .param p1    # D

    iput-wide p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(D)V
    .registers 5
    .param p1    # D

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 6
    .param p1    # Ljava/lang/Number;

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-void
.end method

.method public toDouble()Ljava/lang/Double;
    .registers 3

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
