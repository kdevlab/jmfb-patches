.class public Lexternal/org/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "RandomStringUtils.java"


# static fields
.field private static final RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static random(I)Ljava/lang/String;
    .registers 2
    .param p0    # I

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ)Ljava/lang/String;
    .registers 12
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Z

    const/4 v5, 0x0

    sget-object v6, Lexternal/org/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(IIIZZ[C)Ljava/lang/String;
    .registers 13
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Z
    .param p5    # [C

    sget-object v6, Lexternal/org/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;
    .registers 15
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # Z
    .param p5    # [C
    .param p6    # Ljava/util/Random;

    const v7, 0xdc00

    const v6, 0xd800

    const/16 v5, 0x80

    if-nez p0, :cond_d

    const-string v4, ""

    :goto_c
    return-object v4

    :cond_d
    if-gez p0, :cond_2e

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested random string length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is less than 0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2e
    if-nez p1, :cond_3e

    if-nez p2, :cond_3e

    const/16 p2, 0x7b

    const/16 p1, 0x20

    if-nez p3, :cond_3e

    if-nez p4, :cond_3e

    const/4 p1, 0x0

    const p2, 0x7fffffff

    :cond_3e
    new-array v0, p0, [C

    sub-int v3, p2, p1

    move v2, p0

    :goto_43
    add-int/lit8 p0, v2, -0x1

    if-eqz v2, :cond_b1

    if-nez p5, :cond_70

    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p1

    int-to-char v1, v4

    :goto_4f
    if-eqz p3, :cond_57

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_63

    :cond_57
    if-eqz p4, :cond_5f

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_63

    :cond_5f
    if-nez p3, :cond_ae

    if-nez p4, :cond_ae

    :cond_63
    if-lt v1, v7, :cond_85

    const v4, 0xdfff

    if-gt v1, v4, :cond_85

    if-nez p0, :cond_78

    add-int/lit8 p0, p0, 0x1

    :goto_6e
    move v2, p0

    goto :goto_43

    :cond_70
    invoke-virtual {p6, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, p1

    aget-char v1, p5, v4

    goto :goto_4f

    :cond_78
    aput-char v1, v0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v0, p0

    goto :goto_6e

    :cond_85
    if-lt v1, v6, :cond_9e

    const v4, 0xdb7f

    if-gt v1, v4, :cond_9e

    if-nez p0, :cond_91

    add-int/lit8 p0, p0, 0x1

    goto :goto_6e

    :cond_91
    invoke-virtual {p6, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v7

    int-to-char v4, v4

    aput-char v4, v0, p0

    add-int/lit8 p0, p0, -0x1

    aput-char v1, v0, p0

    goto :goto_6e

    :cond_9e
    const v4, 0xdb80

    if-lt v1, v4, :cond_ab

    const v4, 0xdbff

    if-gt v1, v4, :cond_ab

    add-int/lit8 p0, p0, 0x1

    goto :goto_6e

    :cond_ab
    aput-char v1, v0, p0

    goto :goto_6e

    :cond_ae
    add-int/lit8 p0, p0, 0x1

    goto :goto_6e

    :cond_b1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_c
.end method

.method public static random(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0    # I
    .param p1    # Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_f

    const/4 v5, 0x0

    sget-object v6, Lexternal/org/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(I[C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static random(IZZ)Ljava/lang/String;
    .registers 4
    .param p0    # I
    .param p1    # Z
    .param p2    # Z

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1, p2}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs random(I[C)Ljava/lang/String;
    .registers 9
    .param p0    # I
    .param p1    # [C

    const/4 v1, 0x0

    if-nez p1, :cond_f

    const/4 v5, 0x0

    sget-object v6, Lexternal/org/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    array-length v2, p1

    sget-object v6, Lexternal/org/apache/commons/lang3/RandomStringUtils;->RANDOM:Ljava/util/Random;

    move v0, p0

    move v3, v1

    move v4, v1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IIIZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static randomAlphabetic(I)Ljava/lang/String;
    .registers 3
    .param p0    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAlphanumeric(I)Ljava/lang/String;
    .registers 2
    .param p0    # I

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomAscii(I)Ljava/lang/String;
    .registers 4
    .param p0    # I

    const/4 v2, 0x0

    const/16 v0, 0x20

    const/16 v1, 0x7f

    invoke-static {p0, v0, v1, v2, v2}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IIIZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumeric(I)Ljava/lang/String;
    .registers 3
    .param p0    # I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/RandomStringUtils;->random(IZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
