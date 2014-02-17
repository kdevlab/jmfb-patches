.class public Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;
.super Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "LookupTranslator.java"


# instance fields
.field private final longest:I

.field private final lookupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final shortest:I


# direct methods
.method public varargs constructor <init>([[Ljava/lang/CharSequence;)V
    .registers 13
    .param p1    # [[Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    const v1, 0x7fffffff

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    move-object v2, p1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v4, :cond_31

    aget-object v5, v2, v3

    iget-object v7, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    aget-object v8, v5, v10

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v5, v10

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v6, v1, :cond_2b

    move v1, v6

    :cond_2b
    if-le v6, v0, :cond_2e

    move v0, v6

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_31
    iput v1, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 10
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    iget v4, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->longest:I

    add-int/2addr v4, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v4, v5, :cond_11

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int v1, v4, p2

    :cond_11
    move v0, v1

    :goto_12
    iget v4, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->shortest:I

    if-lt v0, v4, :cond_31

    add-int v4, p2, v0

    invoke-interface {p1, p2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->lookupMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2d
    return v0

    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method
