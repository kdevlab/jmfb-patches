.class public Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;
.super Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "AggregateTranslator.java"


# instance fields
.field private final translators:[Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V
    .registers 3
    .param p1    # [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;->translators:[Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 9
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;->translators:[Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_12

    aget-object v4, v0, v2

    invoke-virtual {v4, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v1

    if-eqz v1, :cond_f

    :goto_e
    return v1

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method
