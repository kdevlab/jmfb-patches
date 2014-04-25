.class public Lexternal/org/apache/commons/lang3/CharSequenceUtils;
.super Ljava/lang/Object;
.source "CharSequenceUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;II)I
    .registers 6
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I
    .param p2    # I

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_b

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :cond_a
    :goto_a
    return v0

    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gez p2, :cond_12

    const/4 p2, 0x0

    :cond_12
    move v0, p2

    :goto_13
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1e
    const/4 v0, -0x1

    goto :goto_a
.end method

.method static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 7
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I
    .param p2    # I

    const/4 v2, -0x1

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_c

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gez p2, :cond_14

    move v0, v2

    goto :goto_b

    :cond_14
    if-lt p2, v1, :cond_18

    add-int/lit8 p2, v1, -0x1

    :cond_18
    move v0, p2

    :goto_19
    if-ltz v0, :cond_24

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_b

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_24
    move v0, v2

    goto :goto_b
.end method

.method static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 5
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z
    .registers 12
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/CharSequence;
    .param p4    # I
    .param p5    # I

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_17

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    goto :goto_16
.end method

.method public static subSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method static toCharArray(Ljava/lang/CharSequence;)[C
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_b

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :cond_a
    return-object v0

    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v2, :cond_a

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16
.end method
