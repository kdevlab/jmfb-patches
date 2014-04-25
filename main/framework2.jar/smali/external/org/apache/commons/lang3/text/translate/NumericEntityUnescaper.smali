.class public Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;
.super Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "NumericEntityUnescaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;
    }
.end annotation


# instance fields
.field private final options:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V
    .registers 5
    .param p1    # [Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    array-length v0, p1

    if-lez v0, :cond_11

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    const/4 v1, 0x0

    sget-object v2, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    goto :goto_10
.end method


# virtual methods
.method public isSet(Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;->options:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 15
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x26

    if-ne v9, v10, :cond_dd

    add-int/lit8 v9, v7, -0x2

    if-ge p2, v9, :cond_dd

    add-int/lit8 v9, p2, 0x1

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x23

    if-ne v9, v10, :cond_dd

    add-int/lit8 v8, p2, 0x2

    const/4 v4, 0x0

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v9, 0x78

    if-eq v3, v9, :cond_29

    const/16 v9, 0x58

    if-ne v3, v9, :cond_30

    :cond_29
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    if-ne v8, v7, :cond_30

    const/4 v9, 0x0

    :goto_2f
    return v9

    :cond_30
    move v1, v8

    :goto_31
    if-ge v1, v7, :cond_66

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_43

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x39

    if-le v9, v10, :cond_63

    :cond_43
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x61

    if-lt v9, v10, :cond_53

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x66

    if-le v9, v10, :cond_63

    :cond_53
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x41

    if-lt v9, v10, :cond_66

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x46

    if-gt v9, v10, :cond_66

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_66
    if-eq v1, v7, :cond_7d

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x3b

    if-ne v9, v10, :cond_7d

    const/4 v6, 0x1

    :goto_71
    if-nez v6, :cond_8f

    sget-object v9, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->semiColonRequired:Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v9}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v9

    if-eqz v9, :cond_7f

    const/4 v9, 0x0

    goto :goto_2f

    :cond_7d
    const/4 v6, 0x0

    goto :goto_71

    :cond_7f
    sget-object v9, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;->errorIfNoSemiColon:Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-virtual {p0, v9}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;->isSet(Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)Z

    move-result v9

    if-eqz v9, :cond_8f

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Semi-colon required at end of numeric entity"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8f
    if-eqz v4, :cond_c2

    :try_start_91
    invoke-interface {p1, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_9e
    .catch Ljava/lang/NumberFormatException; {:try_start_91 .. :try_end_9e} :catch_d1

    move-result v2

    :goto_9f
    const v9, 0xffff

    if-le v2, v9, :cond_d5

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    const/4 v9, 0x0

    aget-char v9, v0, v9

    invoke-virtual {p3, v9}, Ljava/io/Writer;->write(I)V

    const/4 v9, 0x1

    aget-char v9, v0, v9

    invoke-virtual {p3, v9}, Ljava/io/Writer;->write(I)V

    :goto_b4
    add-int/lit8 v9, v1, 0x2

    sub-int v10, v9, v8

    if-eqz v4, :cond_d9

    const/4 v9, 0x1

    :goto_bb
    add-int/2addr v10, v9

    if-eqz v6, :cond_db

    const/4 v9, 0x1

    :goto_bf
    add-int/2addr v9, v10

    goto/16 :goto_2f

    :cond_c2
    :try_start_c2
    invoke-interface {p1, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_cf
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_cf} :catch_d1

    move-result v2

    goto :goto_9f

    :catch_d1
    move-exception v5

    const/4 v9, 0x0

    goto/16 :goto_2f

    :cond_d5
    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_b4

    :cond_d9
    const/4 v9, 0x0

    goto :goto_bb

    :cond_db
    const/4 v9, 0x0

    goto :goto_bf

    :cond_dd
    const/4 v9, 0x0

    goto/16 :goto_2f
.end method
