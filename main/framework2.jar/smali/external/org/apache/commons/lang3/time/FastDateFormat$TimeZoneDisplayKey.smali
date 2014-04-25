.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;
.super Ljava/lang/Object;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneDisplayKey"
.end annotation


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V
    .registers 6
    .param p1    # Ljava/util/TimeZone;
    .param p2    # Z
    .param p3    # I
    .param p4    # Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    if-eqz p2, :cond_a

    const/high16 v0, -0x80000000

    or-int/2addr p3, v0

    :cond_a
    iput p3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    iput-object p4, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    instance-of v3, p1, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;

    if-eqz v3, :cond_28

    move-object v0, p1

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    iget-object v4, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    iget v4, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    iget-object v4, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_26
    move v1, v2

    goto :goto_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mStyle:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
