.class final Lexternal/org/apache/commons/lang3/text/StrMatcher$NoMatcher;
.super Lexternal/org/apache/commons/lang3/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NoMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/text/StrMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .registers 6
    .param p1    # [C
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v0, 0x0

    return v0
.end method
