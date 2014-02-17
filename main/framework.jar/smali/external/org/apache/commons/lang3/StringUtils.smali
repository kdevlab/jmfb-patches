.class public Lexternal/org/apache/commons/lang3/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;
    }
.end annotation


# static fields
.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field private static final PAD_LIMIT:I = 0x2000

.field private static final WHITESPACE_BLOCK:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x4

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    if-ge p2, v3, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width is 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p1, v1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v2, p2, -0x3

    if-ge v1, v2, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, p2, -0x3

    sub-int p1, v1, v2

    :cond_30
    const-string v0, "..."

    if-gt p1, v3, :cond_4f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, p2, -0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_4f
    const/4 v1, 0x7

    if-ge p2, v1, :cond_5a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Minimum abbreviation width with offset is 7"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5a
    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, -0x3

    invoke-static {v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, p2, -0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge p2, v4, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-lt p2, v4, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v3, p2, v4

    div-int/lit8 v4, v3, 0x2

    rem-int/lit8 v5, v3, 0x2

    add-int v2, v4, v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int v1, v4, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # C

    if-eqz p0, :cond_4

    if-gtz p1, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-lez v0, :cond_4

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    if-eqz p0, :cond_4

    if-gtz p1, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string p2, " "

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-lez v0, :cond_4

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    invoke-static {p0, v2, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0    # Ljava/lang/String;

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v5, 0xd

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_1b

    if-ne v0, v7, :cond_b

    :cond_1b
    const-string p0, ""

    goto :goto_b

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_39

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_34

    add-int/lit8 v2, v2, -0x1

    :cond_34
    :goto_34
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_39
    if-eq v1, v5, :cond_34

    add-int/lit8 v2, v2, 0x1

    goto :goto_34
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;

    const/4 v6, 0x0

    if-nez p0, :cond_5

    const/4 v2, 0x0

    :cond_4
    :goto_4
    return-object v2

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_f

    const-string v2, ""

    goto :goto_4

    :cond_f
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_4

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I

    const/4 v0, 0x0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ltz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_3
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .registers 13
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [C

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_e
    move v7, v8

    :cond_f
    :goto_f
    return v7

    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    array-length v6, p1

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_43

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v6, :cond_40

    aget-char v9, p1, v4

    if-ne v9, v0, :cond_3d

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_f

    if-eq v4, v5, :cond_f

    if-ge v3, v1, :cond_3d

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_f

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_43
    move v7, v8

    goto :goto_f
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 9
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v4

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v6, v0, v5

    const/4 v2, 0x0

    :goto_12
    if-gt v2, v6, :cond_6

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v4, v1

    goto :goto_6

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_12
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_5
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .registers 13
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [C

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v7, v8

    :cond_7
    :goto_7
    return v7

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    array-length v6, p1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_3b

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v6, :cond_38

    aget-char v9, p1, v4

    if-ne v9, v0, :cond_35

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_7

    if-eq v4, v5, :cond_7

    if-ge v3, v1, :cond_35

    add-int/lit8 v9, v4, 0x1

    aget-char v9, p1, v9

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_7

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_3b
    move v7, v8

    goto :goto_7
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    goto :goto_5
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .registers 6
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [C

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p0, :cond_8

    :cond_6
    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_7

    array-length v2, p1

    if-nez v2, :cond_13

    move v0, v1

    goto :goto_7

    :cond_13
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_7
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_7

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v2, 0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 5
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    const/4 v0, 0x0

    :cond_d
    return v0

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_10
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, p0

    goto :goto_6
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    move-object p1, p0

    goto :goto_6
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p0

    goto :goto_2
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [C

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, v1

    :goto_10
    if-ge v3, v4, :cond_28

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_31

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    :goto_24
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_10

    :cond_28
    if-eq v2, v4, :cond_6

    new-instance p0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_6

    :cond_31
    move v1, v2

    goto :goto_24
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    if-nez p1, :cond_7

    move-object p1, p0

    goto :goto_2

    :cond_7
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const-string p1, ""

    goto :goto_2

    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 9
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Z

    const/4 v4, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_b

    :cond_5
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    const/4 v4, 0x1

    :cond_a
    :goto_a
    return v4

    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v2, v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v4

    goto :goto_a
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    :goto_d
    return v4

    :cond_e
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_d

    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v4, 0x1

    goto :goto_d

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_b

    :cond_6
    if-ne p0, p1, :cond_9

    :goto_8
    return v1

    :cond_9
    move v1, v2

    goto :goto_8

    :cond_b
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    goto :goto_8
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_9

    :cond_6
    const-string v1, ""

    :goto_8
    return-object v1

    :cond_9
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    aget-object v1, p0, v2

    if-nez v1, :cond_17

    const-string v1, ""

    goto :goto_8

    :cond_17
    aget-object v1, p0, v2

    goto :goto_8

    :cond_1a
    if-nez v0, :cond_1f

    const-string v1, ""

    goto :goto_8

    :cond_1f
    aget-object v1, p0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 15
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v10, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_d

    :cond_5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Strings must not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_d
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v6, :cond_19

    move v10, v5

    :goto_18
    return v10

    :cond_19
    if-nez v5, :cond_1d

    move v10, v6

    goto :goto_18

    :cond_1d
    if-le v6, v5, :cond_27

    move-object v9, p0

    move-object p0, p1

    move-object p1, v9

    move v6, v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :cond_27
    add-int/lit8 v11, v6, 0x1

    new-array v7, v11, [I

    add-int/lit8 v11, v6, 0x1

    new-array v2, v11, [I

    const/4 v3, 0x0

    :goto_30
    if-gt v3, v6, :cond_37

    aput v3, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_37
    const/4 v4, 0x1

    :goto_38
    if-gt v4, v5, :cond_72

    add-int/lit8 v11, v4, -0x1

    invoke-interface {p1, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v4, v2, v10

    const/4 v3, 0x1

    :goto_43
    if-gt v3, v6, :cond_6c

    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_6a

    move v1, v10

    :goto_4e
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/lit8 v11, v11, 0x1

    aget v12, v7, v3

    add-int/lit8 v12, v12, 0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    add-int/lit8 v12, v3, -0x1

    aget v12, v7, v12

    add-int/2addr v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_6a
    const/4 v1, 0x1

    goto :goto_4e

    :cond_6c
    move-object v0, v7

    move-object v7, v2

    move-object v2, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_72
    aget v10, v7, v6

    goto :goto_18
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 18
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    :cond_4
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Strings must not be null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_c
    if-gez p2, :cond_16

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Threshold must not be negative"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_16
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v9, :cond_28

    move/from16 v0, p2

    if-gt v6, v0, :cond_26

    move v13, v6

    :goto_25
    return v13

    :cond_26
    const/4 v13, -0x1

    goto :goto_25

    :cond_28
    if-nez v6, :cond_32

    move/from16 v0, p2

    if-gt v9, v0, :cond_30

    move v13, v9

    goto :goto_25

    :cond_30
    const/4 v13, -0x1

    goto :goto_25

    :cond_32
    if-le v9, v6, :cond_3e

    move-object v12, p0

    move-object/from16 p0, p1

    move-object/from16 p1, v12

    move v9, v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    :cond_3e
    add-int/lit8 v13, v9, 0x1

    new-array v10, v13, [I

    add-int/lit8 v13, v9, 0x1

    new-array v3, v13, [I

    move/from16 v0, p2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    const/4 v4, 0x0

    :goto_4f
    if-ge v4, v2, :cond_56

    aput v4, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_56
    array-length v13, v10

    const v14, 0x7fffffff

    invoke-static {v10, v2, v13, v14}, Ljava/util/Arrays;->fill([IIII)V

    const v13, 0x7fffffff

    invoke-static {v3, v13}, Ljava/util/Arrays;->fill([II)V

    const/4 v5, 0x1

    :goto_64
    if-gt v5, v6, :cond_bd

    add-int/lit8 v13, v5, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/4 v13, 0x0

    aput v5, v3, v13

    const/4 v13, 0x1

    sub-int v14, v5, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v13, v5, p2

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-le v8, v7, :cond_82

    const/4 v13, -0x1

    goto :goto_25

    :cond_82
    const/4 v13, 0x1

    if-le v8, v13, :cond_8c

    add-int/lit8 v13, v8, -0x1

    const v14, 0x7fffffff

    aput v14, v3, v13

    :cond_8c
    move v4, v8

    :goto_8d
    if-gt v4, v7, :cond_b7

    add-int/lit8 v13, v4, -0x1

    invoke-interface {p0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_a0

    add-int/lit8 v13, v4, -0x1

    aget v13, v10, v13

    aput v13, v3, v4

    :goto_9d
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    :cond_a0
    add-int/lit8 v13, v4, -0x1

    aget v13, v3, v13

    aget v14, v10, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v14, v4, -0x1

    aget v14, v10, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    aput v13, v3, v4

    goto :goto_9d

    :cond_b7
    move-object v1, v10

    move-object v10, v3

    move-object v3, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    :cond_bd
    aget v13, v10, v9

    move/from16 v0, p2

    if-gt v13, v0, :cond_c7

    aget v13, v10, v9

    goto/16 :goto_25

    :cond_c7
    const/4 v13, -0x1

    goto/16 :goto_25
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_7
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I
    .param p2    # I

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_7
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_5
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_5
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    goto :goto_d
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .registers 12
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [C

    const/4 v7, -0x1

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_d
    move v3, v7

    :cond_e
    :goto_e
    return v3

    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    array-length v6, p1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_42

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v6, :cond_3f

    aget-char v8, p1, v4

    if-ne v8, v0, :cond_3c

    if-ge v3, v1, :cond_e

    if-ge v4, v5, :cond_e

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_e

    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_e

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_42
    move v3, v7

    goto :goto_e
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 9
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [Ljava/lang/CharSequence;

    const/4 v5, -0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v1, v5

    :cond_6
    :goto_6
    return v1

    :cond_7
    array-length v3, p1

    const v1, 0x7fffffff

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_21

    aget-object v2, p1, v0

    if-nez v2, :cond_16

    :cond_13
    :goto_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_16
    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    if-eq v4, v5, :cond_13

    if-ge v4, v1, :cond_13

    move v1, v4

    goto :goto_13

    :cond_21
    const v6, 0x7fffffff

    if-ne v1, v6, :cond_6

    move v1, v5

    goto :goto_6
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 10
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_e
    move v3, v5

    :cond_f
    :goto_f
    return v3

    :cond_10
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v4, :cond_42

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {p1, v0, v6}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_3d

    const/4 v2, 0x1

    :goto_22
    add-int/lit8 v7, v3, 0x1

    if-ge v7, v4, :cond_3f

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_3f

    add-int/lit8 v7, v3, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eqz v2, :cond_3a

    invoke-static {p1, v1, v6}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v7

    if-ltz v7, :cond_f

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_3d
    move v2, v6

    goto :goto_22

    :cond_3f
    if-nez v2, :cond_3a

    goto :goto_f

    :cond_42
    move v3, v5

    goto :goto_f
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .registers 12
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [C

    const/4 v7, -0x1

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_d
    move v3, v7

    :cond_e
    :goto_e
    return v3

    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    array-length v6, p1

    add-int/lit8 v5, v6, -0x1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_42

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v6, :cond_e

    aget-char v8, p1, v4

    if-ne v8, v0, :cond_3f

    if-ge v3, v1, :cond_3c

    if-ge v4, v5, :cond_3c

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_3c

    add-int/lit8 v8, v4, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3f

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_42
    move v3, v7

    goto :goto_e
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 6
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v1, -0x1

    if-ne p0, p1, :cond_5

    move v0, v1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_4

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_22

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_30

    :cond_22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .registers 15
    .param p0    # [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eqz p0, :cond_8

    array-length v12, p0

    const/4 v13, 0x1

    if-gt v12, v13, :cond_a

    :cond_8
    move v8, v11

    :cond_9
    :goto_9
    return v8

    :cond_a
    const/4 v1, 0x0

    const/4 v0, 0x1

    array-length v2, p0

    const v8, 0x7fffffff

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v2, :cond_33

    aget-object v12, p0, v6

    if-nez v12, :cond_1d

    const/4 v1, 0x1

    const/4 v8, 0x0

    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1d
    const/4 v0, 0x0

    aget-object v12, p0, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aget-object v12, p0, v6

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1a

    :cond_33
    if-nez v0, :cond_39

    if-nez v7, :cond_3b

    if-nez v1, :cond_3b

    :cond_39
    move v8, v11

    goto :goto_9

    :cond_3b
    if-nez v8, :cond_3f

    move v8, v10

    goto :goto_9

    :cond_3f
    const/4 v5, -0x1

    const/4 v9, 0x0

    :goto_41
    if-ge v9, v8, :cond_57

    aget-object v12, p0, v10

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v3, 0x1

    :goto_4a
    if-ge v3, v2, :cond_55

    aget-object v12, p0, v3

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_5d

    move v5, v9

    :cond_55
    if-eq v5, v11, :cond_60

    :cond_57
    if-ne v5, v11, :cond_5b

    if-ne v8, v7, :cond_9

    :cond_5b
    move v8, v5

    goto :goto_9

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_60
    add-int/lit8 v9, v9, 0x1

    goto :goto_41
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 11
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    const/4 v7, -0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v2, v7

    :cond_6
    :goto_6
    return v2

    :cond_7
    if-gez p2, :cond_a

    const/4 p2, 0x0

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x1

    if-le p2, v6, :cond_19

    move v2, v7

    goto :goto_6

    :cond_19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_21

    move v2, p2

    goto :goto_6

    :cond_21
    move v2, p2

    :goto_22
    if-ge v2, v6, :cond_35

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_35
    move v2, v7

    goto :goto_6
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v2

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_20

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v2

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_20

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v2

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_18

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lexternal/org/apache/commons/lang3/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x1

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_9

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_19

    const/4 v2, 0x0

    goto :goto_9

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0    # Ljava/lang/CharSequence;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0    # Ljava/lang/CharSequence;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0    # Ljava/lang/CharSequence;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_1e

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    const/4 v2, 0x1

    goto :goto_9
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v2

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_20

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_20
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p0    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v2

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_18

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .registers 3
    .param p1    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .registers 6
    .param p1    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v3, 0x0

    :goto_3
    return-object v3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, ""

    goto :goto_3

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v3, 0x0

    :goto_3
    return-object v3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, ""

    goto :goto_3

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {v1}, Lexternal/org/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz v1, :cond_28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    if-eqz p1, :cond_33

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .registers 4
    .param p0    # [Ljava/lang/Object;
    .param p1    # C

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .registers 8
    .param p0    # [Ljava/lang/Object;
    .param p1    # C
    .param p2    # I
    .param p3    # I

    if-nez p0, :cond_4

    const/4 v3, 0x0

    :goto_3
    return-object v3

    :cond_4
    sub-int v2, p3, p2

    if-gtz v2, :cond_b

    const-string v3, ""

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p2

    :goto_13
    if-ge v1, p3, :cond_26

    if-le v1, p2, :cond_1a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    aget-object v3, p0, v1

    if-eqz v3, :cond_23

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # [Ljava/lang/Object;
    .param p1    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .registers 8
    .param p0    # [Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    if-nez p0, :cond_4

    const/4 v3, 0x0

    :goto_3
    return-object v3

    :cond_4
    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    sub-int v2, p3, p2

    if-gtz v2, :cond_f

    const-string v3, ""

    goto :goto_3

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, p2

    :goto_17
    if-ge v1, p3, :cond_2a

    if-le v1, p2, :cond_1e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    aget-object v3, p0, v1

    if-eqz v3, :cond_27

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_7
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # I
    .param p2    # I

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    goto :goto_7
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_5
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_5
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .registers 8
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v1, -0x1

    :cond_5
    return v1

    :cond_6
    array-length v3, p1

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_5

    aget-object v2, p1, v0

    if-nez v2, :cond_13

    :cond_10
    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {p0, v2, v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    if-le v4, v1, :cond_10

    move v1, v4

    goto :goto_10
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_5
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 10
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    const/4 v6, -0x1

    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v2, v6

    :cond_6
    :goto_6
    return v2

    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_1c

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int p2, v0, v1

    :cond_1c
    if-gez p2, :cond_20

    move v2, v6

    goto :goto_6

    :cond_20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_28

    move v2, p2

    goto :goto_6

    :cond_28
    move v2, p2

    :goto_29
    if-ltz v2, :cond_3c

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    :cond_3c
    move v2, v6

    goto :goto_6
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    if-gez p1, :cond_9

    const-string p0, ""

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # C

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-lez v0, :cond_3

    const/16 v1, 0x2000

    if-le v0, v1, :cond_19

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_19
    invoke-static {p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string p2, " "

    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, p1, v5

    if-lez v4, :cond_4

    const/4 v6, 0x1

    if-ne v2, v6, :cond_29

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_29

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_29
    if-ne v4, v2, :cond_30

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_30
    if-ge v4, v2, :cond_3b

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_3b
    new-array v3, v4, [C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_42
    if-ge v0, v4, :cond_4d

    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4d
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0    # Ljava/lang/CharSequence;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_3
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/util/Locale;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # I

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    if-ltz p2, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_f

    :cond_c
    const-string v0, ""

    goto :goto_3

    :cond_f
    if-gez p1, :cond_12

    const/4 p1, 0x0

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_1f

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1f
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Lexternal/org/apache/commons/lang3/StringUtils;->WHITESPACE_BLOCK:Ljava/util/regex/Pattern;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .registers 7
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Z

    const/4 v1, -0x1

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    if-gtz p2, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_18

    if-eqz p3, :cond_16

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_14
    move v1, v2

    goto :goto_7

    :cond_16
    const/4 v2, 0x0

    goto :goto_14

    :cond_18
    const/4 v0, 0x0

    if-eqz p3, :cond_1f

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_1f
    if-eqz p3, :cond_2e

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    :goto_27
    if-ltz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_1f

    goto :goto_7

    :cond_2e
    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_27
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 9
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    if-nez p0, :cond_4

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_4
    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gez p2, :cond_f

    const/4 p2, 0x0

    :cond_f
    if-le p2, v0, :cond_12

    move p2, v0

    :cond_12
    if-gez p3, :cond_15

    const/4 p3, 0x0

    :cond_15
    if-le p3, v0, :cond_18

    move p3, v0

    :cond_18
    if-le p2, p3, :cond_1d

    move v1, p2

    move p2, p3

    move p3, v1

    :cond_1d
    new-instance v2, Ljava/lang/StringBuilder;

    add-int v3, v0, p2

    sub-int/2addr v3, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;
    .param p1    # C

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    :cond_d
    :goto_d
    return-object p0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_14
    array-length v4, v0

    if-ge v1, v4, :cond_25

    aget-char v4, v0, v1

    if-eq v4, p1, :cond_22

    add-int/lit8 v3, v2, 0x1

    aget-char v4, v0, v1

    aput-char v4, v0, v2

    move v2, v3

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_25
    new-instance p0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_d
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method private static removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p0    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_c

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$400()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "java.text.Normalizer is not available"

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$200()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_18
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizerFormNFD:Ljava/lang/Object;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$400()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Pattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$500()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v6, 0x0

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "sun.text.Normalizer is not available"

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$300()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunPattern:Ljava/util/regex/Pattern;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$600()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static repeat(CI)Ljava/lang/String;
    .registers 5
    .param p0    # C
    .param p1    # I

    new-array v0, p1, [C

    add-int/lit8 v1, p1, -0x1

    :goto_4
    if-ltz v1, :cond_b

    aput-char p0, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    if-gtz p1, :cond_b

    const-string p0, ""

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq p1, v9, :cond_5

    if-eqz v4, :cond_5

    if-ne v4, v9, :cond_22

    const/16 v7, 0x2000

    if-gt p1, v7, :cond_22

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_22
    mul-int v6, v4, p1

    packed-switch v4, :pswitch_data_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_2d
    if-ge v3, p1, :cond_5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :pswitch_35
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :pswitch_3e
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    new-array v5, v6, [C

    mul-int/lit8 v7, p1, 0x2

    add-int/lit8 v3, v7, -0x2

    :goto_4c
    if-ltz v3, :cond_59

    aput-char v1, v5, v3

    add-int/lit8 v7, v3, 0x1

    aput-char v2, v5, v7

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_4c

    :cond_59
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([C)V

    goto :goto_5

    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_35
        :pswitch_3e
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    if-eqz p0, :cond_4

    if-nez p1, :cond_9

    :cond_4
    invoke-static {p0, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_8
    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/16 v5, 0x40

    const/4 v7, -0x1

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_13

    if-eqz p2, :cond_13

    if-nez p3, :cond_14

    :cond_13
    :goto_13
    return-object p0

    :cond_14
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v7, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v2, v6, v3

    if-gez v2, :cond_28

    const/4 v2, 0x0

    :cond_28
    if-gez p3, :cond_56

    const/16 v5, 0x10

    :cond_2c
    :goto_2c
    mul-int/2addr v2, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_37
    if-eq v1, v7, :cond_4a

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v4, v1, v3

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_5a

    :cond_4a
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_56
    if-gt p3, v5, :cond_2c

    move v5, p3

    goto :goto_2c

    :cond_5a
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_37
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # C
    .param p2    # C

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    if-nez p2, :cond_11

    const-string p2, ""

    :cond_11
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v6, :cond_3d

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_39

    const/4 v4, 0x1

    if-ge v3, v5, :cond_36

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36

    :cond_3d
    if-eqz v4, :cond_c

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;
    .param p2    # [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .registers 25
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;
    .param p2    # [Ljava/lang/String;
    .param p3    # Z
    .param p4    # I

    if-eqz p0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_1a

    if-eqz p1, :cond_1a

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-eqz v17, :cond_1a

    if-eqz p2, :cond_1a

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_1b

    :cond_1a
    :goto_1a
    return-object p0

    :cond_1b
    if-gez p4, :cond_25

    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_25
    move-object/from16 v0, p1

    array-length v12, v0

    move-object/from16 v0, p2

    array-length v10, v0

    if-eq v12, v10, :cond_54

    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Search and Replace array lengths don\'t match: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " vs "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_54
    new-array v8, v12, [Z

    const/4 v15, -0x1

    const/4 v9, -0x1

    const/4 v14, -0x1

    const/4 v6, 0x0

    :goto_5a
    if-ge v6, v12, :cond_93

    aget-boolean v17, v8, v6

    if-nez v17, :cond_70

    aget-object v17, p1, v6

    if-eqz v17, :cond_70

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_70

    aget-object v17, p2, v6

    if-nez v17, :cond_73

    :cond_70
    :goto_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    :cond_73
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_88

    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_70

    :cond_88
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_90

    if-ge v14, v15, :cond_70

    :cond_90
    move v15, v14

    move v9, v6

    goto :goto_70

    :cond_93
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_1a

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_9c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_c5

    aget-object v17, p1, v6

    if-eqz v17, :cond_ad

    aget-object v17, p2, v6

    if-nez v17, :cond_b0

    :cond_ad
    :goto_ad
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    :cond_b0
    aget-object v17, p2, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    aget-object v18, p1, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v5, v17, v18

    if-lez v5, :cond_ad

    mul-int/lit8 v17, v5, 0x3

    add-int v7, v7, v17

    goto :goto_ad

    :cond_c5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x5

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int v17, v17, v7

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_de
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_141

    move v6, v13

    :goto_e5
    if-ge v6, v15, :cond_f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e5

    :cond_f5
    aget-object v17, p2, v9

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v17, p1, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v13, v15, v17

    const/4 v15, -0x1

    const/4 v9, -0x1

    const/4 v14, -0x1

    const/4 v6, 0x0

    :goto_108
    if-ge v6, v12, :cond_de

    aget-boolean v17, v8, v6

    if-nez v17, :cond_11e

    aget-object v17, p1, v6

    if-eqz v17, :cond_11e

    aget-object v17, p1, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_11e

    aget-object v17, p2, v6

    if-nez v17, :cond_121

    :cond_11e
    :goto_11e
    add-int/lit8 v6, v6, 0x1

    goto :goto_108

    :cond_121
    aget-object v17, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_136

    const/16 v17, 0x1

    aput-boolean v17, v8, v6

    goto :goto_11e

    :cond_136
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_13e

    if-ge v14, v15, :cond_11e

    :cond_13e
    move v15, v14

    move v9, v6

    goto :goto_11e

    :cond_141
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    move v6, v13

    :goto_146
    move/from16 v0, v16

    if-ge v6, v0, :cond_158

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_146

    :cond_158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-nez p3, :cond_162

    move-object/from16 p0, v11

    goto/16 :goto_1a

    :cond_162
    add-int/lit8 v17, p4, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, v17

    invoke-static {v11, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1a
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;
    .param p2    # [Ljava/lang/String;

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_9
    array-length v0, p1

    goto :goto_3
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # C

    if-nez p0, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->reverse([Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    if-gez p1, :cond_9

    const-string p0, ""

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # C

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, p1, v1

    if-lez v0, :cond_3

    const/16 v1, 0x2000

    if-le v0, v1, :cond_19

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_19
    invoke-static {p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x0

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string p2, " "

    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v4, p1, v5

    if-lez v4, :cond_4

    const/4 v6, 0x1

    if-ne v2, v6, :cond_29

    const/16 v6, 0x2000

    if-gt v4, v6, :cond_29

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {p0, p1, v6}, Lexternal/org/apache/commons/lang3/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_29
    if-ne v4, v2, :cond_30

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_30
    if-ge v4, v2, :cond_3b

    invoke-virtual {p2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :cond_3b
    new-array v3, v4, [C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_42
    if-ge v0, v4, :cond_4d

    rem-int v6, v0, v2

    aget-char v6, v1, v6

    aput-char v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4d
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # C

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 11
    .param p0    # Ljava/lang/String;
    .param p1    # Z

    if-nez p0, :cond_4

    const/4 v7, 0x0

    :goto_3
    return-object v7

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_d

    sget-object v7, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    aget-char v7, v0, v5

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v1

    add-int/lit8 v4, v5, 0x1

    :goto_1f
    array-length v7, v0

    if-ge v4, v7, :cond_52

    aget-char v7, v0, v4

    invoke-static {v7}, Ljava/lang/Character;->getType(C)I

    move-result v6

    if-ne v6, v1, :cond_2d

    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_2d
    if-eqz p1, :cond_46

    const/4 v7, 0x2

    if-ne v6, v7, :cond_46

    const/4 v7, 0x1

    if-ne v1, v7, :cond_46

    add-int/lit8 v3, v4, -0x1

    if-eq v3, v5, :cond_44

    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v3

    :cond_44
    :goto_44
    move v1, v6

    goto :goto_2a

    :cond_46
    new-instance v7, Ljava/lang/String;

    sub-int v8, v4, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    goto :goto_44

    :cond_52
    new-instance v7, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v5

    invoke-direct {v7, v0, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 12
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    const/4 v6, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v6

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    sget-object v6, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_3

    :cond_d
    if-eqz p1, :cond_17

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    :cond_17
    invoke-static {p0, v6, p2, p3}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v2, :cond_6a

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v6, -0x1

    if-le v1, v6, :cond_61

    if-le v1, v0, :cond_4a

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_40

    move v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_40
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v0, v1, v4

    goto :goto_28

    :cond_4a
    if-eqz p3, :cond_58

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_5b

    move v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_58
    add-int v0, v1, v4

    goto :goto_28

    :cond_5b
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_61
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_28

    :cond_6a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_3
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # C

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .registers 10
    .param p0    # Ljava/lang/String;
    .param p1    # C
    .param p2    # Z

    if-nez p0, :cond_4

    const/4 v6, 0x0

    :goto_3
    return-object v6

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    sget-object v6, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_3

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_16
    if-ge v0, v2, :cond_34

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_2f

    if-nez v4, :cond_22

    if-eqz p2, :cond_2b

    :cond_22
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    const/4 v1, 0x1

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    move v5, v0

    goto :goto_16

    :cond_2f
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_34
    if-nez v4, :cond_3a

    if-eqz p2, :cond_41

    if-eqz v1, :cond_41

    :cond_3a
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_3
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 15
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    if-nez p0, :cond_4

    const/4 v9, 0x0

    :goto_3
    return-object v9

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    sget-object v9, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_3

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_43

    move v7, v6

    :goto_1a
    if-ge v0, v2, :cond_bc

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3e

    if-nez v4, :cond_2a

    if-eqz p3, :cond_c2

    :cond_2a
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    if-ne v7, p2, :cond_31

    move v0, v2

    const/4 v1, 0x0

    :cond_31
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_39
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    goto :goto_1a

    :cond_3e
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c0

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v7, v6

    :goto_50
    if-ge v0, v2, :cond_75

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_70

    if-nez v4, :cond_5c

    if-eqz p3, :cond_be

    :cond_5c
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    if-ne v7, p2, :cond_63

    move v0, v2

    const/4 v1, 0x0

    :cond_63
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_6b
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    goto :goto_50

    :cond_70
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_75
    move v6, v7

    :goto_76
    if-nez v4, :cond_7c

    if-eqz p3, :cond_83

    if-eqz v1, :cond_83

    :cond_7c
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_83
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    goto/16 :goto_3

    :goto_91
    if-ge v0, v2, :cond_bc

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_b5

    if-nez v4, :cond_a1

    if-eqz p3, :cond_ba

    :cond_a1
    const/4 v1, 0x1

    add-int/lit8 v6, v7, 0x1

    if-ne v7, p2, :cond_a8

    move v0, v2

    const/4 v1, 0x0

    :cond_a8
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    :goto_b0
    add-int/lit8 v0, v0, 0x1

    move v8, v0

    move v7, v6

    goto :goto_91

    :cond_b5
    const/4 v1, 0x0

    const/4 v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    :cond_ba
    move v6, v7

    goto :goto_b0

    :cond_bc
    move v6, v7

    goto :goto_76

    :cond_be
    move v6, v7

    goto :goto_6b

    :cond_c0
    move v7, v6

    goto :goto_91

    :cond_c2
    move v6, v7

    goto/16 :goto_39
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .registers 9
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Z

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_b

    :cond_5
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    const/4 v2, 0x1

    :cond_a
    :goto_a
    return v2

    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v2

    goto :goto_a
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    :goto_d
    return v4

    :cond_e
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v2, :cond_d

    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v4, 0x1

    goto :goto_d

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0    # Ljava/lang/CharSequence;
    .param p1    # Ljava/lang/CharSequence;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_4
    const/4 v2, 0x0

    :try_start_5
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6NormalizeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$000()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->removeAccentsJava6(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_10
    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunDecomposeMethod:Ljava/lang/reflect/Method;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$100()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->removeAccentsSUN(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_1b
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The stripAccents(CharSequence) method requires at least Java6, but got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->java6Exception:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$200()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; or a Sun JVM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->sunException:Ljava/lang/Throwable;
    invoke-static {}, Lexternal/org/apache/commons/lang3/StringUtils$InitStripAccents;->access$300()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_46} :catch_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_46} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_46} :catch_58
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_46} :catch_61

    :catch_46
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalArgumentException occurred"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_4f
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "IllegalAccessException occurred"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_58
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "InvocationTargetException occurred"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_61
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "SecurityException occurred"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0    # [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0    # [Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_7

    :cond_5
    move-object v1, p0

    :cond_6
    return-object v1

    :cond_7
    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_6

    aget-object v3, p0, v0

    invoke-static {v3, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    if-nez p1, :cond_1c

    :goto_b
    if-eqz v0, :cond_34

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_34

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    :goto_22
    if-eqz v0, :cond_34

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_34

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_34
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_1b

    :goto_c
    if-eq v0, v1, :cond_31

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_31

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    :goto_21
    if-eq v0, v1, :cond_31

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_31
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    move-object p0, v0

    :cond_f
    move-object v0, p0

    goto :goto_3
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    if-gez p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_b
    if-gez p1, :cond_e

    const/4 p1, 0x0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_17

    const-string v0, ""

    goto :goto_3

    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # I
    .param p2    # I

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    if-gez p2, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    :cond_b
    if-gez p1, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    :cond_1c
    if-le p1, p2, :cond_21

    const-string v0, ""

    goto :goto_3

    :cond_21
    if-gez p1, :cond_24

    const/4 p1, 0x0

    :cond_24
    if-gez p2, :cond_27

    const/4 p2, 0x0

    :cond_27
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_6
    return-object p0

    :cond_7
    if-nez p1, :cond_c

    const-string p0, ""

    goto :goto_6

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    const-string p0, ""

    goto :goto_6

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p0, ""

    goto :goto_6

    :cond_10
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_25

    :cond_22
    const-string p0, ""

    goto :goto_6

    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p1, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    const-string p0, ""

    goto :goto_8

    :cond_12
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    :goto_c
    return-object p0

    :cond_d
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0, p1, p1}, Lexternal/org/apache/commons/lang3/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return-object v2

    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_8
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 12
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz p0, :cond_f

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_f
    :goto_f
    return-object v7

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_19

    sget-object v7, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_f

    :cond_19
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_27
    sub-int v8, v6, v0

    if-ge v4, v8, :cond_31

    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_44

    :cond_31
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    goto :goto_f

    :cond_44
    add-int/2addr v5, v3

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_31

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v4, v1, v0

    goto :goto_27
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_3a

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_20
    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_1d

    :cond_2d
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v0, v2

    goto :goto_1d

    :cond_3a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_6
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # [B
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_7
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/util/Locale;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
