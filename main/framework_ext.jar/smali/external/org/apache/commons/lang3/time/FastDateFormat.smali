.class public Lexternal/org/apache/commons/lang3/time/FastDateFormat;
.super Ljava/text/Format;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwentyFourHourField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitYearField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitNumberField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$UnpaddedMonthField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$UnpaddedNumberField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$StringLiteral;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;,
        Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;
    }
.end annotation


# static fields
.field public static final FULL:I = 0x0

.field public static final LONG:I = 0x1

.field public static final MEDIUM:I = 0x2

.field public static final SHORT:I = 0x3

.field private static cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final cache:Lexternal/org/apache/commons/lang3/time/FormatCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexternal/org/apache/commons/lang3/time/FormatCache",
            "<",
            "Lexternal/org/apache/commons/lang3/time/FastDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLocale:Ljava/util/Locale;

.field private transient mMaxLengthEstimate:I

.field private final mPattern:Ljava/lang/String;

.field private transient mRules:[Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;

.field private final mTimeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$1;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$1;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/util/TimeZone;
    .param p3    # Ljava/util/Locale;

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    iput-object p2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iput-object p3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->init()V

    return-void
.end method

.method public static getDateInstance(I)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 4
    .param p0    # I

    const/4 v2, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 5
    .param p0    # I
    .param p1    # Ljava/util/Locale;

    const/4 v2, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, p1}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 5
    .param p0    # I
    .param p1    # Ljava/util/TimeZone;

    const/4 v2, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 6
    .param p0    # I
    .param p1    # Ljava/util/TimeZone;
    .param p2    # Ljava/util/Locale;

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 6
    .param p0    # I
    .param p1    # I

    const/4 v3, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 7
    .param p0    # I
    .param p1    # I
    .param p2    # Ljava/util/Locale;

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 4
    .param p0    # I
    .param p1    # I
    .param p2    # Ljava/util/TimeZone;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeInstance(IILjava/util/TimeZone;Ljava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 7
    .param p0    # I
    .param p1    # I
    .param p2    # Ljava/util/TimeZone;
    .param p3    # Ljava/util/Locale;

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance()Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 4

    const/4 v3, 0x0

    const/4 v2, 0x3

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 3
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-virtual {v0, p0, v1, v1}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/util/Locale;

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/util/TimeZone;

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/util/TimeZone;
    .param p2    # Ljava/util/Locale;

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-virtual {v0, p0, p1, p2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(I)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 4
    .param p0    # I

    const/4 v2, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, v2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 5
    .param p0    # I
    .param p1    # Ljava/util/Locale;

    const/4 v2, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, p1}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 5
    .param p0    # I
    .param p1    # Ljava/util/TimeZone;

    const/4 v2, 0x0

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1, p1, v2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method public static getTimeInstance(ILjava/util/TimeZone;Ljava/util/Locale;)Lexternal/org/apache/commons/lang3/time/FastDateFormat;
    .registers 6
    .param p0    # I
    .param p1    # Ljava/util/TimeZone;
    .param p2    # Ljava/util/Locale;

    sget-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cache:Lexternal/org/apache/commons/lang3/time/FormatCache;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/time/FormatCache;->getDateTimeInstance(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    return-object v0
.end method

.method static getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p0    # Ljava/util/TimeZone;
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/util/Locale;

    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;

    invoke-direct {v0, p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneDisplayKey;-><init>(Ljava/util/TimeZone;ZILjava/util/Locale;)V

    sget-object v3, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1e

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->cTimeZoneDisplayCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1e

    move-object v2, v1

    :cond_1e
    return-object v2
.end method

.method private init()V
    .registers 5

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->parsePattern()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;

    iput-object v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mRules:[Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;

    const/4 v1, 0x0

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mRules:[Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;

    array-length v0, v3

    :goto_16
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_24

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mRules:[Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;->estimateLength()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_16

    :cond_24
    iput v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mMaxLengthEstimate:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-direct {p0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->init()V

    return-void
.end method


# virtual methods
.method protected applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1    # Ljava/util/Calendar;
    .param p2    # Ljava/lang/StringBuffer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mRules:[Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    invoke-interface {v3, p2, p1}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;->appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v2, p1, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    if-nez v2, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    iget-object v3, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v3, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    iget-object v3, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public format(J)Ljava/lang/String;
    .registers 4
    .param p1    # J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 4
    .param p1    # Ljava/util/Calendar;

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/util/Date;

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Ljava/lang/StringBuffer;

    iget v2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mMaxLengthEstimate:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1    # J
    .param p3    # Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/StringBuffer;
    .param p3    # Ljava/text/FieldPosition;

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_16

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_a

    :cond_16
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_25

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_a

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_42

    const-string v0, "<null>"

    :goto_36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method public format(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 4
    .param p1    # Ljava/util/Calendar;
    .param p2    # Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1    # Ljava/util/Date;
    .param p2    # Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v0, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->applyRules(Ljava/util/Calendar;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMaxLengthEstimate()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mMaxLengthEstimate:I

    return v0
.end method

.method public getPattern()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected parsePattern()Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lexternal/org/apache/commons/lang3/time/FastDateFormat$Rule;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/text/DateFormatSymbols;

    move-object/from16 v0, p0

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v7, v0, [I

    const/4 v6, 0x0

    :goto_3b
    if-ge v6, v8, :cond_59

    const/16 v19, 0x0

    aput v6, v7, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->parseToken(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    aget v6, v7, v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5a

    :cond_59
    return-object v11

    :cond_5a
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_23c

    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Illegal pattern component: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :sswitch_84
    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-direct {v10, v0, v4}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    :goto_8d
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :sswitch_93
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9e

    sget-object v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitYearField;->INSTANCE:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitYearField;

    goto :goto_8d

    :cond_9e
    const/16 v19, 0x1

    const/16 v20, 0x4

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_aa

    const/16 v17, 0x4

    :cond_aa
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto :goto_8d

    :sswitch_b5
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_c7

    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v9}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_8d

    :cond_c7
    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_d9

    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v0, v12}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto :goto_8d

    :cond_d9
    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_e4

    sget-object v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;->INSTANCE:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;

    goto :goto_8d

    :cond_e4
    sget-object v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$UnpaddedMonthField;->INSTANCE:Lexternal/org/apache/commons/lang3/time/FastDateFormat$UnpaddedMonthField;

    goto :goto_8d

    :sswitch_e7
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto :goto_8d

    :sswitch_f4
    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;

    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwelveHourField;-><init>(Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;)V

    goto :goto_8d

    :sswitch_108
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_116
    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_124
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_132
    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_140
    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;

    const/16 v20, 0x7

    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_157

    move-object/from16 v19, v13

    :goto_14e
    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_8d

    :cond_157
    move-object/from16 v19, v18

    goto :goto_14e

    :sswitch_15a
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_168
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_176
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_184
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_192
    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;

    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-direct {v10, v0, v3}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;-><init>(I[Ljava/lang/String;)V

    goto/16 :goto_8d

    :sswitch_19d
    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwentyFourHourField;

    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwentyFourHourField;-><init>(Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;)V

    goto/16 :goto_8d

    :sswitch_1b2
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;

    move-result-object v10

    goto/16 :goto_8d

    :sswitch_1c0
    const/16 v19, 0x4

    move/from16 v0, v17

    move/from16 v1, v19

    if-lt v0, v1, :cond_1e3

    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_8d

    :cond_1e3
    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mTimeZone:Ljava/util/TimeZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v10, v0, v1, v2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNameRule;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;I)V

    goto/16 :goto_8d

    :sswitch_1fe
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_20a

    sget-object v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_NO_COLON:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    goto/16 :goto_8d

    :cond_20a
    sget-object v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;->INSTANCE_COLON:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TimeZoneNumberRule;

    goto/16 :goto_8d

    :sswitch_20e
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_235

    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    invoke-direct {v10, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$CharacterLiteral;-><init>(C)V

    goto/16 :goto_8d

    :cond_235
    new-instance v10, Lexternal/org/apache/commons/lang3/time/FastDateFormat$StringLiteral;

    invoke-direct {v10, v14}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$StringLiteral;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8d

    :sswitch_data_23c
    .sparse-switch
        0x27 -> :sswitch_20e
        0x44 -> :sswitch_15a
        0x45 -> :sswitch_140
        0x46 -> :sswitch_168
        0x47 -> :sswitch_84
        0x48 -> :sswitch_108
        0x4b -> :sswitch_1b2
        0x4d -> :sswitch_b5
        0x53 -> :sswitch_132
        0x57 -> :sswitch_184
        0x5a -> :sswitch_1fe
        0x61 -> :sswitch_192
        0x64 -> :sswitch_e7
        0x68 -> :sswitch_f4
        0x6b -> :sswitch_19d
        0x6d -> :sswitch_116
        0x73 -> :sswitch_124
        0x77 -> :sswitch_176
        0x79 -> :sswitch_93
        0x7a -> :sswitch_1c0
    .end sparse-switch
.end method

.method protected parseToken(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 15
    .param p1    # Ljava/lang/String;
    .param p2    # [I

    const/16 v11, 0x61

    const/16 v10, 0x5a

    const/16 v9, 0x41

    const/16 v8, 0x27

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p2, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v9, :cond_1c

    if-le v1, v10, :cond_22

    :cond_1c
    if-lt v1, v11, :cond_37

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_37

    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_6b

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v1, :cond_6b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_37
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_3b
    if-ge v2, v4, :cond_6b

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_5d

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v4, :cond_57

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_57

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_57
    if-nez v3, :cond_5b

    const/4 v3, 0x1

    :goto_5a
    goto :goto_54

    :cond_5b
    move v3, v6

    goto :goto_5a

    :cond_5d
    if-nez v3, :cond_72

    if-lt v1, v9, :cond_63

    if-le v1, v10, :cond_69

    :cond_63
    if-lt v1, v11, :cond_72

    const/16 v7, 0x7a

    if-gt v1, v7, :cond_72

    :cond_69
    add-int/lit8 v2, v2, -0x1

    :cond_6b
    aput v2, p2, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_54
.end method

.method protected selectNumberRule(II)Lexternal/org/apache/commons/lang3/time/FastDateFormat$NumberRule;
    .registers 4
    .param p1    # I
    .param p2    # I

    packed-switch p2, :pswitch_data_16

    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;

    invoke-direct {v0, p1, p2}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$PaddedNumberField;-><init>(II)V

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$UnpaddedNumberField;

    invoke-direct {v0, p1}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$UnpaddedNumberField;-><init>(I)V

    goto :goto_8

    :pswitch_f
    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitNumberField;

    invoke-direct {v0, p1}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitNumberField;-><init>(I)V

    goto :goto_8

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FastDateFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
