.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$StringLiteral;
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
    name = "StringLiteral"
.end annotation


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$StringLiteral;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/util/Calendar;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$StringLiteral;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public estimateLength()I
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$StringLiteral;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
