.class final Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;
.super Lexternal/org/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMatcher"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrMatcher;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 10
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v1, v3

    add-int v3, p2, v1

    if-le v3, p4, :cond_a

    move v1, v2

    :cond_9
    :goto_9
    return v1

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    array-length v3, v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/text/StrMatcher$StringMatcher;->chars:[C

    aget-char v3, v3, v0

    aget-char v4, p1, p2

    if-eq v3, v4, :cond_1a

    move v1, v2

    goto :goto_9

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_b
.end method
