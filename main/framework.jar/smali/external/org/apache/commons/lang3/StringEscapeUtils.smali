.class public Lexternal/org/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;,
        Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;
    }
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v1, v8, [[Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\""

    aput-object v3, v2, v6

    const-string v3, "\\\""

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\\"

    aput-object v3, v2, v6

    const-string v3, "\\\\"

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v1, v7, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;->with([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    new-array v1, v7, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    const/16 v2, 0x20

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v9, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v3, v10, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\'"

    aput-object v5, v4, v6

    const-string v5, "\\\'"

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\""

    aput-object v5, v4, v6

    const-string v5, "\\\""

    aput-object v5, v4, v7

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\"

    aput-object v5, v4, v6

    const-string v5, "\\\\"

    aput-object v5, v4, v7

    aput-object v4, v3, v8

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "/"

    aput-object v5, v4, v6

    const-string v5, "\\/"

    aput-object v5, v4, v7

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    const/16 v2, 0x20

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;->outsideOf(II)Lexternal/org/apache/commons/lang3/text/translate/UnicodeEscaper;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v8, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v8, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v9, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v10, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/OctalUnescaper;

    invoke-direct {v2}, Lexternal/org/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/UnicodeUnescaper;

    invoke-direct {v2}, Lexternal/org/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v8

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v3, v10, [[Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\\\"

    aput-object v5, v4, v6

    const-string v5, "\\"

    aput-object v5, v4, v7

    aput-object v4, v3, v6

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\\""

    aput-object v5, v4, v6

    const-string v5, "\""

    aput-object v5, v4, v7

    aput-object v4, v3, v7

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\\'"

    aput-object v5, v4, v6

    const-string v5, "\'"

    aput-object v5, v4, v7

    aput-object v4, v3, v8

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "\\"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v7

    aput-object v4, v3, v9

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v9, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v6, [Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v10, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v8

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v6, [Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v9, [Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v6

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v2, v1, v7

    new-instance v2, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v6, [Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lexternal/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;

    sget-object v0, Lexternal/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
