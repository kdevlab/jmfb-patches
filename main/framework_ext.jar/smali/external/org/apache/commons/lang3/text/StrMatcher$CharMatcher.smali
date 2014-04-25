.class final Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;
.super Lexternal/org/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final ch:C


# direct methods
.method constructor <init>(C)V
    .registers 2
    .param p1    # C

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrMatcher;-><init>()V

    iput-char p1, p0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 7
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/text/StrMatcher$CharMatcher;->ch:C

    aget-char v1, p1, p2

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
