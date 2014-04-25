.class public Lexternal/org/apache/commons/lang3/text/translate/OctalUnescaper;
.super Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "OctalUnescaper.java"


# static fields
.field private static OCTAL_MAX:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x179

    sput v0, Lexternal/org/apache/commons/lang3/text/translate/OctalUnescaper;->OCTAL_MAX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .registers 8
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_5b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_5b

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5b

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, p2, 0x2

    :cond_20
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_46

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_46

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lexternal/org/apache/commons/lang3/text/translate/OctalUnescaper;->OCTAL_MAX:I

    if-le v2, v3, :cond_20

    add-int/lit8 v0, v0, -0x1

    :cond_46
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v2, v0, 0x1

    sub-int/2addr v2, v1

    :goto_5a
    return v2

    :cond_5b
    const/4 v2, 0x0

    goto :goto_5a
.end method
