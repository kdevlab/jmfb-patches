.class public abstract Lexternal/org/apache/commons/lang3/tuple/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<T",
        "L;",
        "TR;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lexternal/org/apache/commons/lang3/tuple/Pair",
        "<T",
        "L;",
        "TR;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/tuple/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lexternal/org/apache/commons/lang3/tuple/Pair",
            "<T",
            "L;",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lexternal/org/apache/commons/lang3/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lexternal/org/apache/commons/lang3/tuple/Pair;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexternal/org/apache/commons/lang3/tuple/Pair",
            "<T",
            "L;",
            "TR;>;)I"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lexternal/org/apache/commons/lang3/tuple/Pair;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/tuple/Pair;->compareTo(Lexternal/org/apache/commons/lang3/tuple/Pair;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2a

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lexternal/org/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lexternal/org/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public final getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLeft()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getRight()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_8
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    :goto_e
    xor-int/2addr v0, v1

    return v0

    :cond_10
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_8

    :cond_19
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
