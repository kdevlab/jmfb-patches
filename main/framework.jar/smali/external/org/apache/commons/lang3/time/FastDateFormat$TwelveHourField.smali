.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwelveHourField"
.end annotation


# instance fields
.field private final mRule:Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;


# direct methods
.method constructor <init>(Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;)V
    .registers 2
    .param p1    # Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;I)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    invoke-interface {v0, p1, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    :cond_e
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    invoke-interface {v1, p1, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;->mRule:Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    invoke-interface {v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;->estimateLength()I

    move-result v0

    return v0
.end method
