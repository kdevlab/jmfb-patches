.class Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;
.super Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CsvEscaper"
.end annotation


# static fields
.field private static final CSV_DELIMITER:C = ','

.field private static final CSV_QUOTE:C = '\"'

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

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

    const/16 v4, 0x22

    if-eqz p2, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CsvEscaper should never reach the [1] index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_SEARCH_CHARS:[C

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0

    :cond_24
    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_QUOTE_STR:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lexternal/org/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_1f
.end method
