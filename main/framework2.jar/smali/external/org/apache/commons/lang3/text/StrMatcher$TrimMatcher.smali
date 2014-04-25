.class final Lexternal/org/apache/commons/lang3/text/StrMatcher$TrimMatcher;
.super Lexternal/org/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrimMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 7
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # I

    aget-char v0, p1, p2

    const/16 v1, 0x20

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
