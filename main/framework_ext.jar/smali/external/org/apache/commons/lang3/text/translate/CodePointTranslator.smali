.class public abstract Lexternal/org/apache/commons/lang3/text/translate/CodePointTranslator;
.super Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "CodePointTranslator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public final translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 7
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lexternal/org/apache/commons/lang3/text/translate/CodePointTranslator;->translate(ILjava/io/Writer;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public abstract translate(ILjava/io/Writer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
