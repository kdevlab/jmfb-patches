.class final Lexternal/org/apache/commons/lang3/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/CharRange$1;,
        Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method private constructor <init>(CCZ)V
    .registers 5
    .param p1    # C
    .param p2    # C
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-le p1, p2, :cond_8

    move v0, p1

    move p1, p2

    move p2, v0

    :cond_8
    iput-char p1, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    iput-char p2, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    iput-boolean p3, p0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    return-void
.end method

.method static synthetic access$100(Lexternal/org/apache/commons/lang3/CharRange;)Z
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/CharRange;

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method static synthetic access$200(Lexternal/org/apache/commons/lang3/CharRange;)C
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/CharRange;

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method static synthetic access$300(Lexternal/org/apache/commons/lang3/CharRange;)C
    .registers 2
    .param p0    # Lexternal/org/apache/commons/lang3/CharRange;

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public static is(C)Lexternal/org/apache/commons/lang3/CharRange;
    .registers 3
    .param p0    # C

    new-instance v0, Lexternal/org/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lexternal/org/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isIn(CC)Lexternal/org/apache/commons/lang3/CharRange;
    .registers 4
    .param p0    # C
    .param p1    # C

    new-instance v0, Lexternal/org/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lexternal/org/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNot(C)Lexternal/org/apache/commons/lang3/CharRange;
    .registers 3
    .param p0    # C

    new-instance v0, Lexternal/org/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lexternal/org/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNotIn(CC)Lexternal/org/apache/commons/lang3/CharRange;
    .registers 4
    .param p0    # C
    .param p1    # C

    new-instance v0, Lexternal/org/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lexternal/org/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method


# virtual methods
.method public contains(C)Z
    .registers 6
    .param p1    # C

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    if-lt p1, v0, :cond_10

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    if-gt p1, v0, :cond_10

    move v0, v1

    :goto_b
    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    if-eq v0, v3, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_b

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public contains(Lexternal/org/apache/commons/lang3/CharRange;)Z
    .registers 6
    .param p1    # Lexternal/org/apache/commons/lang3/CharRange;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Range must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-boolean v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_32

    iget-boolean v2, p1, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_23

    iget-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_21

    iget-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    if-gt v2, v3, :cond_21

    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    iget-char v2, p1, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_2f

    iget-char v2, p1, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    if-le v2, v3, :cond_30

    :cond_2f
    move v1, v0

    :cond_30
    move v0, v1

    goto :goto_20

    :cond_32
    iget-boolean v2, p1, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_43

    iget-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    if-nez v2, :cond_41

    iget-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    const v3, 0xffff

    if-eq v2, v3, :cond_20

    :cond_41
    move v0, v1

    goto :goto_20

    :cond_43
    iget-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    if-gt v2, v3, :cond_4f

    iget-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    if-ge v2, v3, :cond_20

    :cond_4f
    move v0, v1

    goto :goto_20
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
    instance-of v3, p1, Lexternal/org/apache/commons/lang3/CharRange;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    check-cast v0, Lexternal/org/apache/commons/lang3/CharRange;

    iget-char v3, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    iget-char v4, v0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    if-ne v3, v4, :cond_20

    iget-char v3, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    iget-char v4, v0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    if-ne v3, v4, :cond_20

    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    iget-boolean v4, v0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    if-eq v3, v4, :cond_4

    :cond_20
    move v1, v2

    goto :goto_4
.end method

.method public getEnd()C
    .registers 2

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public getStart()C
    .registers 2

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    add-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isNegated()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lexternal/org/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lexternal/org/apache/commons/lang3/CharRange;Lexternal/org/apache/commons/lang3/CharRange$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    if-nez v1, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    iget-char v1, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lexternal/org/apache/commons/lang3/CharRange;->start:C

    iget-char v2, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    if-eq v1, v2, :cond_2a

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lexternal/org/apache/commons/lang3/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    :cond_30
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    return-object v1
.end method
