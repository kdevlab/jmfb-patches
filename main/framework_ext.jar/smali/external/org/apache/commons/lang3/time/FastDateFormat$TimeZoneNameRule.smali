.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;
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
    name = "TimeZoneNameRule"
.end annotation


# instance fields
.field private final mDaylight:Ljava/lang/String;

.field private final mStandard:Ljava/lang/String;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V
    .registers 5
    .param p1    # Ljava/util/TimeZone;
    .param p2    # Ljava/util/Locale;
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mTimeZone:Ljava/util/TimeZone;

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p1, v0, p3, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/util/Calendar;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15
.end method

.method public estimateLength()I
    .registers 3

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
