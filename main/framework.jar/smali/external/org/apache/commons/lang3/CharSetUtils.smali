.class public Lexternal/org/apache/commons/lang3/CharSetUtils;
.super Ljava/lang/Object;
.source "CharSetUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs count(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_c
    const/4 v3, 0x0

    :cond_d
    return v3

    :cond_e
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/CharSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v5, :cond_d

    aget-char v1, v0, v4

    invoke-virtual {v2, v1}, Lexternal/org/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v6

    if-eqz v6, :cond_25

    add-int/lit8 v3, v3, 0x1

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_19
.end method

.method private static deepEmpty([Ljava/lang/String;)Z
    .registers 6
    .param p0    # [Ljava/lang/String;

    if-eqz p0, :cond_14

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    invoke-static {v3}, Lexternal/org/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    :goto_10
    return v4

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    const/4 v4, 0x1

    goto :goto_10
.end method

.method public static varargs delete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static varargs keep(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_10
    const-string v0, ""

    goto :goto_3

    :cond_13
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSetUtils;->modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static modify(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;
    .param p2    # Z

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/CharSet;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v4, v2

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v4, :cond_25

    aget-char v5, v2, v3

    invoke-virtual {v1, v5}, Lexternal/org/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v5

    if-ne v5, p2, :cond_22

    aget-char v5, v2, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static varargs squeeze(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSetUtils;->deepEmpty([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSet;->getInstance([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/CharSet;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v6, v3

    const/16 v5, 0x20

    const/16 v1, 0x20

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v6, :cond_3a

    aget-char v1, v3, v4

    if-ne v1, v5, :cond_35

    if-eqz v4, :cond_35

    invoke-virtual {v2, v1}, Lexternal/org/apache/commons/lang3/CharSet;->contains(C)Z

    move-result v7

    if-eqz v7, :cond_35

    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v5, v1

    goto :goto_32

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method
