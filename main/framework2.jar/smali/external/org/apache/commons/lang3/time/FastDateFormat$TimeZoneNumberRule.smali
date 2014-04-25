.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;
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
    name = "TimeZoneNumberRule"
.end annotation


# static fields
.field static final INSTANCE_COLON:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

.field static final INSTANCE_NO_COLON:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;


# instance fields
.field final mColon:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;-><init>(Z)V

    sput-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2
    .param p1    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->mColon:Z

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 8
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {p2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int v2, v3, v4

    if-gez v2, :cond_4e

    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v2, v2

    :goto_16
    const v3, 0x36ee80

    div-int v0, v2, v3

    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->mColon:Z

    if-eqz v3, :cond_34

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_34
    const v3, 0xea60

    div-int v3, v2, v3

    mul-int/lit8 v4, v0, 0x3c

    sub-int v1, v3, v4

    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    :cond_4e
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_16
.end method

.method public estimateLength()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
