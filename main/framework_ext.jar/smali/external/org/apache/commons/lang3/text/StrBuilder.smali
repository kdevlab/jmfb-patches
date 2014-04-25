.class public Lexternal/org/apache/commons/lang3/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;,
        Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderReader;,
        Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_7

    const/16 p1, 0x20

    :cond_7
    new-array v0, p1, [C

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_c

    const/16 v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [C

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    goto :goto_b
.end method

.method private deleteImpl(III)V
    .registers 7
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    return-void
.end method

.method private replaceImpl(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 13
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    if-eqz p1, :cond_6

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_7

    :cond_6
    return-object p0

    :cond_7
    if-nez p2, :cond_2d

    const/4 v5, 0x0

    :goto_a
    iget-object v6, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v1, p3

    :goto_d
    if-ge v1, p4, :cond_6

    if-eqz p5, :cond_6

    invoke-virtual {p1, v6, v1, p3, p4}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v3

    if-lez v3, :cond_2a

    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    sub-int v0, p4, v3

    add-int p4, v0, v5

    add-int v0, v1, v5

    add-int/lit8 v1, v0, -0x1

    if-lez p5, :cond_2a

    add-int/lit8 p5, p5, -0x1

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_2d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_a
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .registers 11
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # I

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v1, p3

    add-int v0, v1, p5

    if-eq p5, p3, :cond_18

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v3, p1, p5

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_18
    if-lez p5, :cond_20

    const/4 v1, 0x0

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_20
    return-void
.end method


# virtual methods
.method public append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6
    .param p1    # C

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p1, v1, v2

    return-object p0
.end method

.method public append(D)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # D

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v2, p1, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public append(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-ltz p2, :cond_f

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-le p2, v1, :cond_17

    :cond_f
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    if-ltz p3, :cond_21

    add-int v1, p2, p3

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_29

    :cond_21
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    if-lez p3, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->getChars(II[CI)V

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public append(Ljava/lang/CharSequence;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/CharSequence;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_6
.end method

.method public append(Ljava/lang/CharSequence;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_6
.end method

.method public append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/Object;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_6
.end method

.method public append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public append(Ljava/lang/String;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-ltz p2, :cond_f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_17

    :cond_f
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    if-ltz p3, :cond_21

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_29

    :cond_21
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    if-lez p3, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public append(Ljava/lang/StringBuffer;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v1, v3, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public append(Ljava/lang/StringBuffer;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-ltz p2, :cond_f

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-le p2, v1, :cond_17

    :cond_f
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    if-ltz p3, :cond_21

    add-int v1, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-le v1, v2, :cond_29

    :cond_21
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    if-lez p3, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    add-int v1, p2, p3

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public append(Z)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6
    .param p1    # Z

    const/16 v3, 0x65

    if-eqz p1, :cond_3a

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x74

    aput-char v2, v0, v1

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x72

    aput-char v2, v0, v1

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    :goto_39
    return-object p0

    :cond_3a
    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x66

    aput-char v2, v0, v1

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x61

    aput-char v2, v0, v1

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x73

    aput-char v2, v0, v1

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v3, v0, v1

    goto :goto_39
.end method

.method public append([C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6
    .param p1    # [C

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    array-length v1, p1

    if-lez v1, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public append([CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 8
    .param p1    # [C
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-ltz p2, :cond_c

    array-length v1, p1

    if-le p2, v1, :cond_25

    :cond_c
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid startIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    if-ltz p3, :cond_2c

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_45

    :cond_2c
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    if-lez p3, :cond_6

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_6
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendAll(Ljava/lang/Iterable;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lexternal/org/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    goto :goto_6

    :cond_14
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lexternal/org/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_10

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    goto :goto_2

    :cond_10
    return-object p0
.end method

.method public appendAll([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # [Ljava/lang/Object;

    if-eqz p1, :cond_12

    array-length v4, p1

    if-lez v4, :cond_12

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v3, :cond_12

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # I
    .param p2    # I
    .param p3    # C

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 11
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # C

    if-lez p2, :cond_26

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_27

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    :goto_e
    if-nez v2, :cond_12

    const-string v2, ""

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p2, :cond_2c

    sub-int v4, v3, p2

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v6, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    :goto_21
    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_26
    return-object p0

    :cond_27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_2c
    sub-int v1, p2, v3

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v1, :cond_3b

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_3b
    const/4 v4, 0x0

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v6, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v4, v3, v5, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_21
.end method

.method public appendFixedWidthPadRight(IIC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # I
    .param p2    # I
    .param p3    # C

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 11
    .param p1    # Ljava/lang/Object;
    .param p2    # I
    .param p3    # C

    const/4 v6, 0x0

    if-lez p2, :cond_25

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    invoke-virtual {p0, v4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_26

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v2

    :goto_f
    if-nez v2, :cond_13

    const-string v2, ""

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, p2, :cond_2b

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v2, v6, p2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    :cond_20
    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v4, p2

    iput v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_25
    return-object p0

    :cond_26
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_2b
    sub-int v1, p2, v3

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v2, v6, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v0, 0x0

    :goto_35
    if-ge v0, v1, :cond_20

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    aput-char p3, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method public appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_a

    sget-object v0, Lexternal/org/apache/commons/lang3/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    :goto_9
    return-object p0

    :cond_a
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    goto :goto_9
.end method

.method public appendNull()Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    goto :goto_4
.end method

.method public appendPadding(IC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # I
    .param p2    # C

    if-ltz p1, :cond_18

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p1, :cond_18

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    return-object p0
.end method

.method public appendSeparator(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # C

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    :cond_9
    return-object p0
.end method

.method public appendSeparator(CC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # C
    .param p2    # C

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    :goto_9
    return-object p0

    :cond_a
    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    goto :goto_9
.end method

.method public appendSeparator(CI)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # C
    .param p2    # I

    if-lez p2, :cond_5

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    :cond_5
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # I

    if-eqz p1, :cond_7

    if-lez p2, :cond_7

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    :cond_7
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v0, p2

    :goto_7
    if-eqz v0, :cond_c

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    :cond_c
    return-object p0

    :cond_d
    move-object v0, p1

    goto :goto_7
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lexternal/org/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_21

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    goto :goto_a

    :cond_21
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lexternal/org/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1d

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    goto :goto_6

    :cond_1d
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # [Ljava/lang/Object;
    .param p2    # Ljava/lang/String;

    if-eqz p1, :cond_1e

    array-length v1, p1

    if-lez v1, :cond_1e

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/ObjectUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v0, 0x1

    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1e
    return-object p0
.end method

.method public appendln(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # C

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # D

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(D)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # F

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(F)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # I

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # J

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(J)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Z

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Z)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # [C

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # [C
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .registers 2

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderReader;-><init>(Lexternal/org/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;-><init>(Lexternal/org/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .registers 2

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;-><init>(Lexternal/org/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public capacity()I
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .registers 3
    .param p1    # I

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_e
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    return-object p0
.end method

.method public contains(C)Z
    .registers 5
    .param p1    # C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v2, :cond_10

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_d

    const/4 v2, 0x1

    :goto_c
    return v2

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public contains(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Z
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Lexternal/org/apache/commons/lang3/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public delete(II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int v0, p2, p1

    if-lez v0, :cond_b

    invoke-direct {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_b
    return-object p0
.end method

.method public deleteAll(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6
    .param p1    # C

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_21

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-ne v3, p1, :cond_1e

    move v2, v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_18

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v3, v3, v0

    if-eq v3, p1, :cond_c

    :cond_18
    sub-int v1, v0, v2

    invoke-direct {p0, v2, v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    sub-int/2addr v0, v1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-object p0
.end method

.method public deleteAll(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 8
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replace(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_16

    move v1, v2

    :goto_4
    if-lez v1, :cond_1b

    invoke-virtual {p0, p1, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_a
    if-ltz v0, :cond_1b

    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_a

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_4

    :cond_1b
    return-object p0
.end method

.method public deleteCharAt(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # I

    if-ltz p1, :cond_6

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_c
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    return-object p0
.end method

.method public deleteFirst(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # C

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_12

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_11
    return-object p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public deleteFirst(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 8
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replace(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteFirst(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_12

    move v1, v2

    :goto_4
    if-lez v1, :cond_11

    invoke-virtual {p0, p1, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_11

    add-int v2, v0, v1

    invoke-direct {p0, v0, v2, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_11
    return-object p0

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_4
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 9
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    move v3, v4

    goto :goto_4

    :cond_d
    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v1, v5, :cond_4

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int v2, v5, v1

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v1, :cond_27

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    move v3, v4

    goto :goto_4
.end method

.method public ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6
    .param p1    # I

    const/4 v3, 0x0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v1, v1

    if-le p1, v1, :cond_15

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    return-object p0
.end method

.method public equals(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Z
    .registers 9
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v3

    :cond_5
    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    iget v6, p1, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-eq v5, v6, :cond_d

    move v3, v4

    goto :goto_4

    :cond_d
    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p1, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v5, -0x1

    :goto_15
    if-ltz v0, :cond_4

    aget-char v5, v2, v0

    aget-char v6, v1, v0

    if-eq v5, v6, :cond_1f

    move v3, v4

    goto :goto_4

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_15
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    if-eqz v0, :cond_b

    check-cast p1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->equals(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public equalsIgnoreCase(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Z
    .registers 11
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v5

    :cond_5
    iget v7, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    iget v8, p1, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-eq v7, v8, :cond_d

    move v5, v6

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v3, p1, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v7, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v7, -0x1

    :goto_15
    if-ltz v2, :cond_4

    aget-char v0, v4, v2

    aget-char v1, v3, v2

    if-eq v0, v1, :cond_29

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_29

    move v5, v6

    goto :goto_4

    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_15
.end method

.method public getChars(II[CI)V
    .registers 7
    .param p1    # I
    .param p2    # I
    .param p3    # [C
    .param p4    # I

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_8
    if-ltz p2, :cond_10

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_16

    :cond_10
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_16
    if-le p1, p2, :cond_20

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getChars([C)[C
    .registers 5
    .param p1    # [C

    const/4 v2, 0x0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-eqz p1, :cond_a

    array-length v1, p1

    if-ge v1, v0, :cond_c

    :cond_a
    new-array p1, v0, [C

    :cond_c
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v3, -0x1

    :goto_7
    if-ltz v2, :cond_12

    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_12
    return v1
.end method

.method public indexOf(C)I
    .registers 3
    .param p1    # C

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .registers 7
    .param p1    # C
    .param p2    # I

    const/4 v2, -0x1

    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v3, :cond_a

    move v0, v2

    :cond_9
    :goto_9
    return v0

    :cond_a
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v0, p2

    :goto_d
    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_18

    aget-char v3, v1, v0

    if-eq v3, p1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_18
    move v0, v2

    goto :goto_9
.end method

.method public indexOf(Lexternal/org/apache/commons/lang3/text/StrMatcher;)I
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Lexternal/org/apache/commons/lang3/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lexternal/org/apache/commons/lang3/text/StrMatcher;I)I
    .registers 8
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p2    # I

    const/4 v3, -0x1

    if-gez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    if-eqz p1, :cond_a

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_c

    :cond_a
    move v1, v3

    :cond_b
    :goto_b
    return v1

    :cond_c
    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v1, p2

    :goto_11
    if-ge v1, v2, :cond_1c

    invoke-virtual {p1, v0, v1, p2, v2}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    move v1, v3

    goto :goto_b
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 11
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-gez p2, :cond_5

    move p2, v6

    :cond_5
    if-eqz p1, :cond_b

    iget v7, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v7, :cond_d

    :cond_b
    move p2, v5

    :cond_c
    :goto_c
    return p2

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1d

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v5, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result p2

    goto :goto_c

    :cond_1d
    if-eqz v3, :cond_c

    iget v6, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-le v3, v6, :cond_25

    move p2, v5

    goto :goto_c

    :cond_25
    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v6, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v6, v3

    add-int/lit8 v2, v6, 0x1

    move v0, p2

    :goto_2d
    if-ge v0, v2, :cond_44

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v3, :cond_42

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, v0, v1

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_3f

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_42
    move p2, v0

    goto :goto_c

    :cond_44
    move p2, v5

    goto :goto_c
.end method

.method public insert(IC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # I
    .param p2    # C

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    return-object p0
.end method

.method public insert(ID)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # I
    .param p2    # D

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # I
    .param p2    # F

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # I
    .param p2    # I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # I
    .param p2    # J

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    if-nez p2, :cond_9

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    goto :goto_8
.end method

.method public insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 10
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_8

    iget-object p2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    :cond_8
    if-nez p2, :cond_28

    move v1, v2

    :goto_b
    if-lez v1, :cond_27

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int v0, v3, v1

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v5, p1, v1

    iget v6, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v6, p1

    invoke-static {v3, p1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v2, v1, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_27
    return-object p0

    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_b
.end method

.method public insert(IZ)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 9
    .param p1    # I
    .param p2    # Z

    const/16 v5, 0x65

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-eqz p2, :cond_3e

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x4

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, v1, p1

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, p1

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v5, v1, v0

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    move p1, v0

    :goto_3d
    return-object p0

    :cond_3e
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v3, p1, 0x5

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, v1, p1

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, p1

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 p1, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v5, v1, p1

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_3d
.end method

.method public insert(I[C)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 8
    .param p1    # I
    .param p2    # [C

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_c

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    array-length v0, p2

    if-lez v0, :cond_b

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_b
.end method

.method public insert(I[CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 9
    .param p1    # I
    .param p2    # [C
    .param p3    # I
    .param p4    # I

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_c

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object p0

    :cond_b
    :goto_b
    return-object p0

    :cond_c
    if-ltz p3, :cond_11

    array-length v0, p2

    if-le p3, v0, :cond_2a

    :cond_11
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    if-ltz p4, :cond_31

    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_4a

    :cond_31
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    if-lez p4, :cond_b

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v2, p1, p4

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_b
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public lastIndexOf(C)I
    .registers 3
    .param p1    # C

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .registers 6
    .param p1    # C
    .param p2    # I

    const/4 v1, -0x1

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_9

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p2, v2, -0x1

    :cond_9
    if-gez p2, :cond_d

    move v0, v1

    :cond_c
    :goto_c
    return v0

    :cond_d
    move v0, p2

    :goto_e
    if-ltz v0, :cond_19

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_c

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_19
    move v0, v1

    goto :goto_c
.end method

.method public lastIndexOf(Lexternal/org/apache/commons/lang3/text/StrMatcher;)I
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Lexternal/org/apache/commons/lang3/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lexternal/org/apache/commons/lang3/text/StrMatcher;I)I
    .registers 8
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p2    # I

    const/4 v3, -0x1

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_9

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    :cond_9
    if-eqz p1, :cond_d

    if-gez p2, :cond_f

    :cond_d
    move v2, v3

    :cond_e
    :goto_e
    return v2

    :cond_f
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p2, 0x1

    move v2, p2

    :goto_14
    if-ltz v2, :cond_20

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_e

    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_20
    move v2, v3

    goto :goto_e
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1    # Ljava/lang/String;

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 10
    .param p1    # Ljava/lang/String;
    .param p2    # I

    const/4 v3, -0x1

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v4, :cond_9

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p2, v4, -0x1

    :cond_9
    if-eqz p1, :cond_d

    if-gez p2, :cond_f

    :cond_d
    move v0, v3

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_41

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v2, v4, :cond_41

    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    goto :goto_e

    :cond_26
    sub-int v4, p2, v2

    add-int/lit8 v0, v4, 0x1

    :goto_2a
    if-ltz v0, :cond_45

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v2, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v6, v0, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3e

    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_41
    if-nez v2, :cond_45

    move v0, p2

    goto :goto_e

    :cond_45
    move v0, v3

    goto :goto_e
.end method

.method public leftString(I)Ljava/lang/String;
    .registers 6
    .param p1    # I

    const/4 v3, 0x0

    if-gtz p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_14

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5

    :cond_14
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, v3, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_5
.end method

.method public length()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .registers 6
    .param p1    # I
    .param p2    # I

    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-lez p2, :cond_9

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_c

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_1d

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b

    :cond_1d
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_b
.end method

.method public minimizeCapacity()Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v1, v1

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    if-le v1, v2, :cond_1b

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    return-object p0
.end method

.method public replace(IILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 10
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p2

    if-nez p3, :cond_11

    const/4 v5, 0x0

    :goto_7
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    return-object p0

    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_7
.end method

.method public replace(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p2    # Ljava/lang/String;
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual {p0, p3, p4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p4

    invoke-direct/range {p0 .. p5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replaceImpl(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # C
    .param p2    # C

    if-eq p1, p2, :cond_14

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_14

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_11

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return-object p0
.end method

.method public replaceAll(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 9
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replace(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p1, :cond_1d

    move v3, v0

    :goto_4
    if-lez v3, :cond_27

    if-nez p2, :cond_22

    move v5, v0

    :goto_9
    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    :goto_d
    if-ltz v1, :cond_27

    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    add-int v0, v1, v5

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_d

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_9

    :cond_27
    return-object p0
.end method

.method public replaceFirst(CC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 5
    .param p1    # C
    .param p2    # C

    if-eq p1, p2, :cond_11

    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_12

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    :cond_11
    return-object p0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public replaceFirst(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 9
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replace(Lexternal/org/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 9
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    if-nez p1, :cond_16

    move v3, v5

    :goto_4
    if-lez v3, :cond_15

    invoke-virtual {p0, p1, v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_15

    if-nez p2, :cond_1b

    :goto_e
    add-int v2, v1, v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    :cond_15
    return-object p0

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_1b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_e
.end method

.method public reverse()Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v5, :cond_5

    :cond_4
    return-object p0

    :cond_5
    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    div-int/lit8 v1, v5, 0x2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v5, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v3, v5, -0x1

    :goto_10
    if-ge v2, v1, :cond_4

    aget-char v4, v0, v2

    aget-char v5, v0, v3

    aput-char v5, v0, v2

    aput-char v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_10
.end method

.method public rightString(I)Ljava/lang/String;
    .registers 6
    .param p1    # I

    if-gtz p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_14

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    :cond_14
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4
.end method

.method public setCharAt(IC)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 4
    .param p1    # I
    .param p2    # C

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lt p1, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_e
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    return-object p0
.end method

.method public setLength(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 7
    .param p1    # I

    if-gez p1, :cond_8

    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_8
    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p1, v3, :cond_f

    iput p1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_e
    return-object p0

    :cond_f
    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p1, v3, :cond_e

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    move v1, p1

    iput p1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    move v0, v2

    :goto_1c
    if-ge v0, v1, :cond_e

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v4, 0x0

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public setNewLineText(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 2
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 3
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    const/4 p1, 0x0

    :cond_9
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 8
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    move v2, v3

    goto :goto_4

    :cond_d
    iget v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v1, v4, :cond_4

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_21

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_21
    move v2, v3

    goto :goto_4
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1    # I
    .param p2    # I

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_8
    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p2, v0, :cond_12

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_12
    if-le p1, p2, :cond_1c

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1c
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .registers 5

    const/4 v3, 0x0

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v1, :cond_8

    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :goto_7
    return-object v0

    :cond_8
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    new-array v0, v1, [C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public toCharArray(II)[C
    .registers 7
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int v1, p2, p1

    if-nez v1, :cond_b

    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    :goto_a
    return-object v0

    :cond_b
    new-array v0, v1, [C

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .registers 6

    const/16 v4, 0x20

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_15

    aget-char v3, v0, v2

    if-gt v3, v4, :cond_15

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_15
    :goto_15
    if-ge v2, v1, :cond_20

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v0, v3

    if-gt v3, v4, :cond_20

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_20
    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v1, v3, :cond_29

    iget v3, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, v1, v3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->delete(II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    :cond_29
    if-lez v2, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->delete(II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    goto :goto_6
.end method

.method protected validateIndex(I)V
    .registers 3
    .param p1    # I

    if-ltz p1, :cond_6

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p1, v0, :cond_c

    :cond_6
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_c
    return-void
.end method

.method protected validateRange(II)I
    .registers 5
    .param p1    # I
    .param p2    # I

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_8
    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p2, v0, :cond_e

    iget p2, p0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_e
    if-le p1, p2, :cond_18

    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    return p2
.end method
