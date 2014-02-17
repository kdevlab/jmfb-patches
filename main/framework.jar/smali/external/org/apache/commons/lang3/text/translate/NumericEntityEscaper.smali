.class public Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;
.super Lexternal/org/apache/commons/lang3/text/translate/CodePointTranslator;
.source "NumericEntityEscaper.java"


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .registers 4
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    iput p1, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    iput p2, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    iput-boolean p3, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    return-void
.end method

.method public static above(I)Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 2
    .param p0    # I

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 2
    .param p0    # I

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 4
    .param p0    # I
    .param p1    # I

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .registers 4
    .param p0    # I
    .param p1    # I

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .registers 5
    .param p1    # I
    .param p2    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v1, :cond_d

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v1, :cond_16

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v1, :cond_16

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v1, :cond_d

    :cond_16
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    const/4 v0, 0x1

    goto :goto_d
.end method
