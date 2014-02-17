.class public Lexternal/org/apache/commons/lang3/time/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;
    }
.end annotation


# static fields
.field public static final MILLIS_PER_DAY:J = 0x5265c00L

.field public static final MILLIS_PER_HOUR:J = 0x36ee80L

.field public static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final MILLIS_PER_SECOND:J = 0x3e8L

.field private static final MODIFY_CEILING:I = 0x2

.field private static final MODIFY_ROUND:I = 0x1

.field private static final MODIFY_TRUNCATE:I = 0x0

.field public static final RANGE_MONTH_MONDAY:I = 0x6

.field public static final RANGE_MONTH_SUNDAY:I = 0x5

.field public static final RANGE_WEEK_CENTER:I = 0x4

.field public static final RANGE_WEEK_MONDAY:I = 0x2

.field public static final RANGE_WEEK_RELATIVE:I = 0x3

.field public static final RANGE_WEEK_SUNDAY:I = 0x1

.field public static final SEMI_MONTH:I = 0x3e9

.field private static final fields:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/16 v2, 0xe

    aput v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const/16 v2, 0xd

    aput v2, v1, v3

    aput-object v1, v0, v4

    new-array v1, v4, [I

    const/16 v2, 0xc

    aput v2, v1, v3

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_48

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v6, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [I

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    aput v3, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DateUtils;->fields:[[I

    return-void

    :array_48
    .array-data 4
        0xb
        0xa
    .end array-data

    :array_50
    .array-data 4
        0x5
        0x5
        0x9
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x3e9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/util/Date;II)Ljava/util/Date;
    .registers 6
    .param p0    # Ljava/util/Date;
    .param p1    # I
    .param p2    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addWeeks(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static addYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->add(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 5
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    return-object v0
.end method

.method public static ceiling(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_24

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->ceiling(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_14

    :cond_24
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find ceiling of for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ceiling(Ljava/util/Date;I)Ljava/util/Date;
    .registers 5
    .param p0    # Ljava/util/Date;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static getFragment(Ljava/util/Calendar;II)J
    .registers 11
    .param p0    # Ljava/util/Calendar;
    .param p1    # I
    .param p2    # I

    const-wide/32 v6, 0x5265c00

    if-nez p0, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The date must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getMillisPerUnit(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    packed-switch p1, :pswitch_data_7e

    :goto_16
    packed-switch p1, :pswitch_data_86

    :pswitch_19
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_38
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_16

    :pswitch_42
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    goto :goto_16

    :pswitch_4c
    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    :pswitch_59
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xea60

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    :pswitch_66
    const/16 v4, 0xd

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    :pswitch_72
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    div-long/2addr v4, v0

    add-long/2addr v2, v4

    :pswitch_7d
    return-wide v2

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_42
    .end packed-switch

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4c
        :pswitch_19
        :pswitch_19
        :pswitch_4c
        :pswitch_4c
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_59
        :pswitch_66
        :pswitch_72
        :pswitch_7d
    .end packed-switch
.end method

.method private static getFragment(Ljava/util/Date;II)J
    .registers 6
    .param p0    # Ljava/util/Date;
    .param p1    # I
    .param p2    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0, p1, p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getFragmentInDays(Ljava/util/Calendar;I)J
    .registers 4
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInDays(Ljava/util/Date;I)J
    .registers 4
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Calendar;I)J
    .registers 4
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInHours(Ljava/util/Date;I)J
    .registers 4
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Calendar;I)J
    .registers 4
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMilliseconds(Ljava/util/Date;I)J
    .registers 4
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xe

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Calendar;I)J
    .registers 4
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInMinutes(Ljava/util/Date;I)J
    .registers 4
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Calendar;I)J
    .registers 4
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Calendar;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFragmentInSeconds(Ljava/util/Date;I)J
    .registers 4
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->getFragment(Ljava/util/Date;II)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMillisPerUnit(I)J
    .registers 6
    .param p0    # I

    const-wide v0, 0x7fffffffffffffffL

    packed-switch p0, :pswitch_data_3a

    :pswitch_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The unit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be represented is milleseconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_27
    const-wide/32 v0, 0x5265c00

    :goto_2a
    return-wide v0

    :pswitch_2b
    const-wide/32 v0, 0x36ee80

    goto :goto_2a

    :pswitch_2f
    const-wide/32 v0, 0xea60

    goto :goto_2a

    :pswitch_33
    const-wide/16 v0, 0x3e8

    goto :goto_2a

    :pswitch_36
    const-wide/16 v0, 0x1

    goto :goto_2a

    nop

    :pswitch_data_3a
    .packed-switch 0x5
        :pswitch_27
        :pswitch_27
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2b
        :pswitch_2f
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 7
    .param p0    # Ljava/util/Calendar;
    .param p1    # Ljava/util/Calendar;

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2e

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2e

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2e

    :goto_2d
    return v0

    :cond_2e
    move v0, v1

    goto :goto_2d
.end method

.method public static isSameDay(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 6
    .param p0    # Ljava/util/Date;
    .param p1    # Ljava/util/Date;

    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The date must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    return v2
.end method

.method public static isSameInstant(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 6
    .param p0    # Ljava/util/Calendar;
    .param p1    # Ljava/util/Calendar;

    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static isSameInstant(Ljava/util/Date;Ljava/util/Date;)Z
    .registers 6
    .param p0    # Ljava/util/Date;
    .param p1    # Ljava/util/Date;

    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isSameLocalTime(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 9
    .param p0    # Ljava/util/Calendar;
    .param p1    # Ljava/util/Calendar;

    const/16 v6, 0xc

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    if-nez p1, :cond_13

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xe

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xd

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_6c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_6c

    :goto_6b
    return v0

    :cond_6c
    move v0, v1

    goto :goto_6b
.end method

.method public static iterator(Ljava/lang/Object;I)Ljava/util/Iterator;
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Date;I)Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_20

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_14

    :cond_20
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not iterate based on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;
    .registers 11
    .param p0    # Ljava/util/Calendar;
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x7

    if-nez p0, :cond_f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The date must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x7

    packed-switch p1, :pswitch_data_98

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The range style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_35
    invoke-static {p0, v4}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v0, v4, v7}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->add(II)V

    const/4 v4, 0x6

    if-ne p1, v4, :cond_4a

    const/4 v3, 0x2

    const/4 v1, 0x1

    :cond_4a
    :goto_4a
    :pswitch_4a
    if-ge v3, v7, :cond_4e

    add-int/lit8 v3, v3, 0x7

    :cond_4e
    if-le v3, v5, :cond_52

    add-int/lit8 v3, v3, -0x7

    :cond_52
    if-ge v1, v7, :cond_56

    add-int/lit8 v1, v1, 0x7

    :cond_56
    if-le v1, v5, :cond_5a

    add-int/lit8 v1, v1, -0x7

    :cond_5a
    :goto_5a
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v3, :cond_87

    invoke-virtual {v2, v6, v8}, Ljava/util/Calendar;->add(II)V

    goto :goto_5a

    :pswitch_64
    invoke-static {p0, v6}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {p0, v6}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    packed-switch p1, :pswitch_data_a8

    goto :goto_4a

    :pswitch_70
    const/4 v3, 0x2

    const/4 v1, 0x1

    goto :goto_4a

    :pswitch_73
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    goto :goto_4a

    :pswitch_7a
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v3, v4, -0x3

    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x3

    goto :goto_4a

    :cond_87
    :goto_87
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v1, :cond_91

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_87

    :cond_91
    new-instance v4, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;

    invoke-direct {v4, v2, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils$DateIterator;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;)V

    return-object v4

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_64
        :pswitch_35
        :pswitch_35
    .end packed-switch

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_70
        :pswitch_73
        :pswitch_7a
    .end packed-switch
.end method

.method public static iterator(Ljava/util/Date;I)Ljava/util/Iterator;
    .registers 5
    .param p0    # Ljava/util/Date;
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->iterator(Ljava/util/Calendar;I)Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private static modify(Ljava/util/Calendar;II)V
    .registers 30
    .param p0    # Ljava/util/Calendar;
    .param p1    # I
    .param p2    # I

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v23

    const v24, 0x10b07600

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1b

    new-instance v23, Ljava/lang/ArithmeticException;

    const-string v24, "Calendar value too large for accurate calculations"

    invoke-direct/range {v23 .. v24}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_1b
    const/16 v23, 0xe

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    const/4 v7, 0x0

    const/16 v23, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eqz p2, :cond_3f

    const/16 v23, 0x1f4

    move/from16 v0, v23

    if-ge v14, v0, :cond_44

    :cond_3f
    int-to-long v0, v14

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    :cond_44
    const/16 v23, 0xd

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_4d

    const/4 v7, 0x1

    :cond_4d
    const/16 v23, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    if-nez v7, :cond_6e

    if-eqz p2, :cond_63

    const/16 v23, 0x1e

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_6e

    :cond_63
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    sub-long v21, v21, v23

    :cond_6e
    const/16 v23, 0xc

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_77

    const/4 v7, 0x1

    :cond_77
    const/16 v23, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    if-nez v7, :cond_99

    if-eqz p2, :cond_8d

    const/16 v23, 0x1e

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_99

    :cond_8d
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide/32 v25, 0xea60

    mul-long v23, v23, v25

    sub-long v21, v21, v23

    :cond_99
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    cmp-long v23, v23, v21

    if-eqz v23, :cond_ab

    move-wide/from16 v0, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/Date;->setTime(J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_ab
    const/16 v19, 0x0

    sget-object v4, Lexternal/org/apache/commons/lang3/time/DateUtils;->fields:[[I

    array-length v11, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_b2
    if-ge v10, v11, :cond_231

    aget-object v3, v4, v10

    move-object v5, v3

    array-length v12, v5

    const/4 v9, 0x0

    :goto_b9
    if-ge v9, v12, :cond_16c

    aget v8, v5, v9

    move/from16 v0, p1

    if-ne v8, v0, :cond_168

    const/16 v23, 0x2

    move/from16 v0, p2

    move/from16 v1, v23

    if-eq v0, v1, :cond_d3

    const/16 v23, 0x1

    move/from16 v0, p2

    move/from16 v1, v23

    if-ne v0, v1, :cond_23

    if-eqz v19, :cond_23

    :cond_d3
    const/16 v23, 0x3e9

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_118

    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_fc

    const/16 v23, 0x5

    const/16 v24, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    :cond_fc
    const/16 v23, 0x5

    const/16 v24, -0xf

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v23, 0x2

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    :cond_118
    const/16 v23, 0x9

    move/from16 v0, p1

    move/from16 v1, v23

    if-ne v0, v1, :cond_157

    const/16 v23, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v23

    if-nez v23, :cond_13b

    const/16 v23, 0xb

    const/16 v24, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    :cond_13b
    const/16 v23, 0xb

    const/16 v24, -0xc

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    const/16 v23, 0x5

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    :cond_157
    const/16 v23, 0x0

    aget v23, v3, v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_23

    :cond_168
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_b9

    :cond_16c
    const/16 v17, 0x0

    const/16 v18, 0x0

    sparse-switch p1, :sswitch_data_254

    :cond_173
    :goto_173
    if-nez v18, :cond_1a7

    const/16 v23, 0x0

    aget v23, v3, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v15

    const/16 v23, 0x0

    aget v23, v3, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v13

    const/16 v23, 0x0

    aget v23, v3, v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v23

    sub-int v17, v23, v15

    sub-int v23, v13, v15

    div-int/lit8 v23, v23, 0x2

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_22d

    const/16 v19, 0x1

    :cond_1a7
    :goto_1a7
    if-eqz v17, :cond_1c4

    const/16 v23, 0x0

    aget v23, v3, v23

    const/16 v24, 0x0

    aget v24, v3, v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v24

    sub-int v24, v24, v17

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    :cond_1c4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto/16 :goto_b2

    :sswitch_1c9
    const/16 v23, 0x0

    aget v23, v3, v23

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_173

    const/16 v23, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v23

    add-int/lit8 v17, v23, -0x1

    const/16 v23, 0xf

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_1eb

    add-int/lit8 v17, v17, -0xf

    :cond_1eb
    const/16 v23, 0x7

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_1f9

    const/16 v19, 0x1

    :goto_1f5
    const/16 v18, 0x1

    goto/16 :goto_173

    :cond_1f9
    const/16 v19, 0x0

    goto :goto_1f5

    :sswitch_1fc
    const/16 v23, 0x0

    aget v23, v3, v23

    const/16 v24, 0xb

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_173

    const/16 v23, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/16 v23, 0xc

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_21c

    add-int/lit8 v17, v17, -0xc

    :cond_21c
    const/16 v23, 0x6

    move/from16 v0, v17

    move/from16 v1, v23

    if-lt v0, v1, :cond_22a

    const/16 v19, 0x1

    :goto_226
    const/16 v18, 0x1

    goto/16 :goto_173

    :cond_22a
    const/16 v19, 0x0

    goto :goto_226

    :cond_22d
    const/16 v19, 0x0

    goto/16 :goto_1a7

    :cond_231
    new-instance v23, Ljava/lang/IllegalArgumentException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The field "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not supported"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    :sswitch_data_254
    .sparse-switch
        0x9 -> :sswitch_1fc
        0x3e9 -> :sswitch_1c9
    .end sparse-switch
.end method

.method public static varargs parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseDateStrictly(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DateUtils;->parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static parseDateWithLeniency(Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/Date;
    .registers 15
    .param p0    # Ljava/lang/String;
    .param p1    # [Ljava/lang/String;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v11, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_d

    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Date and Patterns must not be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_d
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-direct {v5}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v5, p2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    new-instance v7, Ljava/text/ParsePosition;

    invoke-direct {v7, v11}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v3, :cond_5f

    aget-object v4, v0, v2

    move-object v6, v4

    const-string v9, "ZZ"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_34
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object v8, p0

    const-string v9, "ZZ"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4b

    const-string v9, "([-+][0-9][0-9]):([0-9][0-9])$"

    const-string v10, "$1$2"

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_4b
    invoke-virtual {v5, v8, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5c

    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_5c

    return-object v1

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_5f
    new-instance v9, Ljava/text/ParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to parse the date: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v9
.end method

.method public static round(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 5
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    return-object v0
.end method

.method public static round(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_24

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->round(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_14

    :cond_24
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not round "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static round(Ljava/util/Date;I)Ljava/util/Date;
    .registers 5
    .param p0    # Ljava/util/Date;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static set(Ljava/util/Date;II)Ljava/util/Date;
    .registers 6
    .param p0    # Ljava/util/Date;
    .param p1    # I
    .param p2    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static setDays(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setHours(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMilliseconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xe

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMinutes(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setMonths(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setSeconds(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static setYears(Ljava/util/Date;I)Ljava/util/Date;
    .registers 3
    .param p0    # Ljava/util/Date;
    .param p1    # I

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->set(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static toCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .registers 2
    .param p0    # Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method public static truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .registers 5
    .param p0    # Ljava/util/Calendar;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    return-object v0
.end method

.method public static truncate(Ljava/lang/Object;I)Ljava/util/Date;
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/util/Date;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    instance-of v0, p0, Ljava/util/Calendar;

    if-eqz v0, :cond_24

    check-cast p0, Ljava/util/Calendar;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_14

    :cond_24
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not truncate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static truncate(Ljava/util/Date;I)Ljava/util/Date;
    .registers 5
    .param p0    # Ljava/util/Date;
    .param p1    # I

    if-nez p0, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The date must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lexternal/org/apache/commons/lang3/time/DateUtils;->modify(Ljava/util/Calendar;II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I
    .registers 6
    .param p0    # Ljava/util/Calendar;
    .param p1    # Ljava/util/Calendar;
    .param p2    # I

    invoke-static {p0, p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    return v2
.end method

.method public static truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I
    .registers 6
    .param p0    # Ljava/util/Date;
    .param p1    # Ljava/util/Date;
    .param p2    # I

    invoke-static {p0, p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    invoke-static {p1, p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncate(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    return v2
.end method

.method public static truncatedEquals(Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    .registers 4
    .param p0    # Ljava/util/Calendar;
    .param p1    # Ljava/util/Calendar;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Calendar;Ljava/util/Calendar;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static truncatedEquals(Ljava/util/Date;Ljava/util/Date;I)Z
    .registers 4
    .param p0    # Ljava/util/Date;
    .param p1    # Ljava/util/Date;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/time/DateUtils;->truncatedCompareTo(Ljava/util/Date;Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
