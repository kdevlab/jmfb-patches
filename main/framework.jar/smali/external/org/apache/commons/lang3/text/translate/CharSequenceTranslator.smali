.class public abstract Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
.super Ljava/lang/Object;
.source "CharSequenceTranslator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hex(I)Ljava/lang/String;
    .registers 3
    .param p0    # I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/CharSequence;

    if-nez p1, :cond_4

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/StringWriter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/io/StringWriter;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_3

    :catch_17
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final translate(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .registers 10
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_a

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Writer must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    if-nez p1, :cond_d

    :cond_c
    return-void

    :cond_d
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :cond_12
    :goto_12
    if-ge v3, v2, :cond_c

    invoke-virtual {p0, p1, v3, p2}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v1

    if-nez v1, :cond_28

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write([C)V

    array-length v5, v0

    add-int/2addr v3, v5

    goto :goto_12

    :cond_28
    const/4 v4, 0x0

    :goto_29
    if-ge v4, v1, :cond_12

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_29
.end method

.method public final varargs with([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .registers 6
    .param p1    # [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    const/4 v3, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    aput-object p0, v0, v3

    const/4 v1, 0x1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    invoke-direct {v1, v0}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    return-object v1
.end method
