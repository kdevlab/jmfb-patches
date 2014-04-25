.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final mValue:C


# direct methods
.method constructor <init>(C)V
    .registers 2
    .param p1    # C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;->mValue:C

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/util/Calendar;

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;->mValue:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public estimateLength()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
