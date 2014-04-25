.class public Lexternal/org/apache/commons/lang3/text/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private quoteMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->commaMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->tabMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->doubleQuoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->trimMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setTrimmerMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0, v2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :goto_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_29
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # C

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # C
    .param p3    # C

    invoke-direct {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    invoke-virtual {p0, p3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lexternal/org/apache/commons/lang3/text/StrMatcher;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lexternal/org/apache/commons/lang3/text/StrMatcher;Lexternal/org/apache/commons/lang3/text/StrMatcher;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p3    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-direct {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;Lexternal/org/apache/commons/lang3/text/StrMatcher;)V

    invoke-virtual {p0, p3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([C)V
    .registers 3
    .param p1    # [C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->splitMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-void
.end method

.method public constructor <init>([CC)V
    .registers 3
    .param p1    # [C
    .param p2    # C

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterChar(C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CCC)V
    .registers 4
    .param p1    # [C
    .param p2    # C
    .param p3    # C

    invoke-direct {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>([CC)V

    invoke-virtual {p0, p3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setQuoteChar(C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLexternal/org/apache/commons/lang3/text/StrMatcher;)V
    .registers 3
    .param p1    # [C
    .param p2    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLexternal/org/apache/commons/lang3/text/StrMatcher;Lexternal/org/apache/commons/lang3/text/StrMatcher;)V
    .registers 4
    .param p1    # [C
    .param p2    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p3    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    invoke-direct {p0, p1, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>([CLexternal/org/apache/commons/lang3/text/StrMatcher;)V

    invoke-virtual {p0, p3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .registers 3
    .param p1    # [C
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;-><init>([C)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16

    :cond_8
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p2, 0x0

    :cond_16
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method private checkTokenized()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    array-length v2, v2

    invoke-virtual {p0, v1, v3, v2}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    goto :goto_1c
.end method

.method private static getCSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance([C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p0    # [C

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getCSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->reset([C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private static getTSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 1

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->reset(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance([C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p0    # [C

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getTSVClone()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->reset([C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method private isQuote([CIIII)Z
    .registers 9
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p5, :cond_16

    add-int v1, p2, v0

    if-ge v1, p3, :cond_11

    add-int v1, p2, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p1, v2

    if-eq v1, v2, :cond_13

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private readNextToken([CIILexternal/org/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I
    .registers 28
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lexternal/org/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :goto_0
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_50

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v5, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v21

    if-eqz v21, :cond_50

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-gtz v4, :cond_50

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_61

    :cond_50
    move/from16 v0, p2

    move/from16 v1, p3

    if-lt v0, v1, :cond_64

    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v4, -0x1

    :goto_60
    return v4

    :cond_61
    add-int p2, p2, v21

    goto :goto_0

    :cond_64
    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    if-lez v20, :cond_82

    const-string v4, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int v4, p2, v20

    goto :goto_60

    :cond_82
    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getQuoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v4, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v11

    if-lez v11, :cond_a7

    add-int v6, p2, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p2

    invoke-direct/range {v4 .. v11}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILexternal/org/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v4

    goto :goto_60

    :cond_a7
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v19}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->readWithQuotes([CIILexternal/org/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I

    move-result v4

    goto :goto_60
.end method

.method private readWithQuotes([CIILexternal/org/apache/commons/lang3/text/StrBuilder;Ljava/util/List;II)I
    .registers 26
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p6    # I
    .param p7    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lexternal/org/apache/commons/lang3/text/StrBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    invoke-virtual/range {p4 .. p4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->clear()Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move/from16 v5, p2

    if-lez p7, :cond_43

    const/4 v15, 0x1

    :goto_8
    const/16 v16, 0x0

    :goto_a
    move/from16 v0, p3

    if-ge v5, v0, :cond_d2

    if-eqz v15, :cond_58

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_49

    add-int v8, v5, p7

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v6 .. v11}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_45

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, p7

    invoke-virtual {v0, v1, v5, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    mul-int/lit8 v3, p7, 0x2

    add-int/2addr v5, v3

    invoke-virtual/range {p4 .. p4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v16

    goto :goto_a

    :cond_43
    const/4 v15, 0x0

    goto :goto_8

    :cond_45
    const/4 v15, 0x0

    add-int v5, v5, p7

    goto :goto_a

    :cond_49
    add-int/lit8 v14, v5, 0x1

    aget-char v3, p1, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual/range {p4 .. p4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v16

    move v5, v14

    goto :goto_a

    :cond_58
    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getDelimiterMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v12

    if-lez v12, :cond_7b

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    add-int v3, v5, v12

    :goto_7a
    return v3

    :cond_7b
    if-lez p7, :cond_92

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v3

    if-eqz v3, :cond_92

    const/4 v15, 0x1

    add-int v5, v5, p7

    goto/16 :goto_a

    :cond_92
    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getIgnoredMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v13

    if-lez v13, :cond_a5

    add-int/2addr v5, v13

    goto/16 :goto_a

    :cond_a5
    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getTrimmerMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v3, v0, v5, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v17

    if-lez v17, :cond_c2

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v5, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    add-int v5, v5, v17

    goto/16 :goto_a

    :cond_c2
    add-int/lit8 v14, v5, 0x1

    aget-char v3, p1, v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual/range {p4 .. p4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v16

    move v5, v14

    goto/16 :goto_a

    :cond_d2
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_7a
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->cloneReset()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    :goto_4
    return-object v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    goto :goto_4
.end method

.method cloneReset()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    iget-object v1, v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_14

    iget-object v1, v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :cond_14
    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->reset()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_5
.end method

.method public getDelimiterMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    return-object v4
.end method

.method public getTrimmerMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasPrevious()Z
    .registers 2

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEmptyTokenAsNull()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokenPos:I

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->reset()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    :goto_b
    return-object p0

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    goto :goto_b
.end method

.method public reset([C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 3
    .param p1    # [C

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->reset()Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->chars:[C

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 3
    .param p1    # C

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 3
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    if-nez p1, :cond_9

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    :goto_8
    return-object p0

    :cond_9
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->delimMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    goto :goto_8
.end method

.method public setDelimiterString(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setDelimiterMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->emptyAsNull:Z

    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoreEmptyTokens:Z

    return-object p0
.end method

.method public setIgnoredChar(C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 3
    .param p1    # C

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setIgnoredMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    if-eqz p1, :cond_4

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->ignoredMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    :cond_4
    return-object p0
.end method

.method public setQuoteChar(C)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 3
    .param p1    # C

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->setQuoteMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    if-eqz p1, :cond_4

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->quoteMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    :cond_4
    return-object p0
.end method

.method public setTrimmerMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrTokenizer;
    .registers 2
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    if-eqz p1, :cond_4

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->trimmerMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    :cond_4
    return-object p0
.end method

.method public size()I
    .registers 2

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->checkTokenized()V

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "StrTokenizer[not tokenized yet]"

    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method protected tokenize([CII)Ljava/util/List;
    .registers 10
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-nez p3, :cond_9

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :cond_8
    return-object v5

    :cond_9
    new-instance v4, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v4}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :cond_14
    :goto_14
    if-ltz v2, :cond_8

    if-ge v2, p3, :cond_8

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->readNextToken([CIILexternal/org/apache/commons/lang3/text/StrBuilder;Ljava/util/List;)I

    move-result v2

    if-lt v2, p3, :cond_14

    const-string v0, ""

    invoke-direct {p0, v5, v0}, Lexternal/org/apache/commons/lang3/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_14
.end method
