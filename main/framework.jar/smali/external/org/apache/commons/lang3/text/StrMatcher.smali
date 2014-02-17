.class public abstract Lexternal/org/apache/commons/lang3/text/StrMatcher;
.super Ljava/lang/Object;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/text/StrMatcher$TrimMatcher;,
        Lexternal/org/apache/commons/lang3/text/StrMatcher$NoMatcher;,
        Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;,
        Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;,
        Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;
    }
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final NONE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final SPACE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final SPLIT_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final TAB_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private static final TRIM_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->COMMA_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->TAB_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->SPACE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->SPLIT_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/text/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->TRIM_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/text/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charMatcher(C)Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2
    .param p0    # C

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 3
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    goto :goto_a

    :cond_1d
    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    goto :goto_a
.end method

.method public static varargs charSetMatcher([C)Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 3
    .param p0    # [C

    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_8

    :cond_5
    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    :goto_7
    return-object v0

    :cond_8
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;-><init>(C)V

    goto :goto_7

    :cond_15
    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharSetMatcher;-><init>([C)V

    goto :goto_7
.end method

.method public static commaMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->COMMA_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->SPACE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->SPLIT_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->NONE_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static tabMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->TAB_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrMatcher;->TRIM_MATCHER:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .registers 5
    .param p1    # [C
    .param p2    # I

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
.end method
