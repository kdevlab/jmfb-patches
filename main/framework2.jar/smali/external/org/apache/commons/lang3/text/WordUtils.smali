.class public Lexternal/org/apache/commons/lang3/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;
    .param p1    # [C

    if-nez p1, :cond_c

    const/4 v3, -0x1

    :goto_3
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v3, :cond_e

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    array-length v3, p1

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    :goto_14
    array-length v5, v0

    if-ge v4, v5, :cond_2d

    aget-char v2, v0, v4

    invoke-static {v2, p1}, Lexternal/org/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v1, 0x1

    :cond_20
    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_23
    if-eqz v1, :cond_20

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    aput-char v5, v0, v4

    const/4 v1, 0x0

    goto :goto_20

    :cond_2d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # [C

    if-nez p1, :cond_c

    const/4 v0, -0x1

    :goto_3
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_e

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    array-length v0, p1

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 10
    .param p0    # Ljava/lang/String;
    .param p1    # [C

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_6
    return-object p0

    :cond_7
    if-eqz p1, :cond_f

    array-length v7, p1

    if-nez v7, :cond_f

    const-string p0, ""

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    new-array v0, v7, [C

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v3, v2

    :goto_1d
    if-ge v4, v6, :cond_37

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v7

    if-eqz v7, :cond_2f

    const/4 v5, 0x1

    move v2, v3

    :goto_2b
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_1d

    :cond_2f
    if-eqz v5, :cond_3e

    add-int/lit8 v2, v3, 0x1

    aput-char v1, v0, v3

    const/4 v5, 0x0

    goto :goto_2b

    :cond_37
    new-instance p0, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    :cond_3e
    move v2, v3

    goto :goto_2b
.end method

.method private static isDelimiter(C[C)Z
    .registers 7
    .param p0    # C
    .param p1    # [C

    if-nez p1, :cond_7

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    :goto_6
    return v4

    :cond_7
    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v3, :cond_15

    aget-char v1, v0, v2

    if-ne p0, v1, :cond_12

    const/4 v4, 0x1

    goto :goto_6

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v4, 0x0

    goto :goto_6
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_d
    array-length v4, v0

    if-ge v2, v4, :cond_4c

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v0, v2

    const/4 v3, 0x0

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_22
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v0, v2

    const/4 v3, 0x0

    goto :goto_1f

    :cond_30
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_47

    if-eqz v3, :cond_40

    invoke-static {v1}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v4

    aput-char v4, v0, v2

    const/4 v3, 0x0

    goto :goto_1f

    :cond_40
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v0, v2

    goto :goto_1f

    :cond_47
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    goto :goto_1f

    :cond_4c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;
    .param p1    # [C

    if-nez p1, :cond_c

    const/4 v2, -0x1

    :goto_3
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    if-nez v2, :cond_e

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    array-length v2, p1

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_14
    array-length v5, v0

    if-ge v3, v5, :cond_2d

    aget-char v1, v0, v3

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v4, 0x1

    :cond_20
    :goto_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_23
    if-eqz v4, :cond_20

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aput-char v5, v0, v3

    const/4 v4, 0x0

    goto :goto_20

    :cond_2d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_b
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 10
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    const/16 v5, 0x20

    if-nez p0, :cond_6

    const/4 v4, 0x0

    :goto_5
    return-object v4

    :cond_6
    if-nez p2, :cond_a

    sget-object p2, Lexternal/org/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    :cond_a
    const/4 v4, 0x1

    if-ge p1, v4, :cond_e

    const/4 p1, 0x1

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_1a
    sub-int v4, v0, v1

    if-le v4, p1, :cond_6a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_27

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_27
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-lt v2, v1, :cond_3c

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    goto :goto_1a

    :cond_3c
    if-eqz p3, :cond_4c

    add-int v4, p1, v1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, p1

    goto :goto_1a

    :cond_4c
    add-int v4, p1, v1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_61

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v2, 0x1

    goto :goto_1a

    :cond_61
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    goto :goto_1a

    :cond_6a
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5
.end method
