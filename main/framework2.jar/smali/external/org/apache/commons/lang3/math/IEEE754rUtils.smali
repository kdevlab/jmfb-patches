.class public Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .registers 5
    .param p0    # D
    .param p2    # D

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-wide p2

    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide p2, p0

    goto :goto_6

    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    goto :goto_6
.end method

.method public static max(DDD)D
    .registers 8
    .param p0    # D
    .param p2    # D
    .param p4    # D

    invoke-static {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .registers 6
    .param p0    # [D

    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    array-length v3, p0

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    const/4 v0, 0x1

    :goto_19
    array-length v3, p0

    if-ge v0, v3, :cond_25

    aget-wide v3, p0, v0

    invoke-static {v3, v4, v1, v2}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->max(DD)D

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return-wide v1
.end method

.method public static max(FF)F
    .registers 3
    .param p0    # F
    .param p1    # F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p1

    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    move p1, p0

    goto :goto_6

    :cond_f
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_6
.end method

.method public static max(FFF)F
    .registers 4
    .param p0    # F
    .param p1    # F
    .param p2    # F

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .registers 5
    .param p0    # [F

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget v2, p0, v0

    invoke-static {v2, v1}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->max(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method

.method public static min(DD)D
    .registers 5
    .param p0    # D
    .param p2    # D

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-wide p2

    :cond_7
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    move-wide p2, p0

    goto :goto_6

    :cond_f
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p2

    goto :goto_6
.end method

.method public static min(DDD)D
    .registers 8
    .param p0    # D
    .param p2    # D
    .param p4    # D

    invoke-static {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .registers 6
    .param p0    # [D

    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    array-length v3, p0

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    const/4 v0, 0x1

    :goto_19
    array-length v3, p0

    if-ge v0, v3, :cond_25

    aget-wide v3, p0, v0

    invoke-static {v3, v4, v1, v2}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->min(DD)D

    move-result-wide v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return-wide v1
.end method

.method public static min(FF)F
    .registers 3
    .param p0    # F
    .param p1    # F

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return p1

    :cond_7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_f

    move p1, p0

    goto :goto_6

    :cond_f
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_6
.end method

.method public static min(FFF)F
    .registers 4
    .param p0    # F
    .param p1    # F
    .param p2    # F

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .registers 5
    .param p0    # [F

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget v2, p0, v0

    invoke-static {v2, v1}, Lexternal/org/apache/commons/lang3/math/IEEE754rUtils;->min(FF)F

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method
