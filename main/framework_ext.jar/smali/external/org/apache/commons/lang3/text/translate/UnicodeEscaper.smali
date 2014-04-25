.class public Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;
.super Lexternal/org/apache/commons/lang3/text/translate/CodePointTranslator;
.source "UnicodeEscaper.java"


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

    invoke-direct {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .registers 4
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    iput p1, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    iput p2, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    iput-boolean p3, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    return-void
.end method

.method public static above(I)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 2
    .param p0    # I

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 2
    .param p0    # I

    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 4
    .param p0    # I
    .param p1    # I

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;
    .registers 4
    .param p0    # I
    .param p1    # I

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

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

    iget-boolean v1, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->between:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v1, :cond_d

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-le p1, v1, :cond_16

    :cond_d
    :goto_d
    return v0

    :cond_e
    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v1, :cond_16

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->above:I

    if-le p1, v1, :cond_d

    :cond_16
    const v0, 0xffff

    if-le p1, v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_35
    const/4 v0, 0x1

    goto :goto_d

    :cond_37
    const/16 v0, 0xfff

    if-le p1, v0, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_35

    :cond_56
    const/16 v0, 0xff

    if-le p1, v0, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_35

    :cond_75
    const/16 v0, 0xf

    if-le p1, v0, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_35

    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_35
.end method
