.class public Lexternal/org/apache/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/mutable/Mutable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lexternal/org/apache/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lexternal/org/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3
    .param p1    # Ljava/lang/Number;

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableInt;)I
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    iget v0, p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    iget v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    if-ge v1, v0, :cond_8

    const/4 v1, -0x1

    :goto_7
    return v1

    :cond_8
    iget v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    if-ne v1, v0, :cond_e

    const/4 v1, 0x0

    goto :goto_7

    :cond_e
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->compareTo(Lexternal/org/apache/commons/lang3/mutable/MutableInt;)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public doubleValue()D
    .registers 3

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_10

    iget v1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    check-cast p1, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public floatValue()F
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public increment()V
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public intValue()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public longValue()J
    .registers 3

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .registers 2
    .param p1    # I

    iput p1, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 3
    .param p1    # Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(I)V
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4
    .param p1    # Ljava/lang/Number;

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
