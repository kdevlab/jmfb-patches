.class public Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/Object;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

.field static final M:Ljava/lang/Object;

.field static final S:Ljava/lang/Object;

.field static final d:Ljava/lang/Object;

.field static final m:Ljava/lang/Object;

.field static final s:Ljava/lang/Object;

.field static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "y"

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    const-string v0, "M"

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    const-string v0, "d"

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    const-string v0, "H"

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    const-string v0, "m"

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    const-string v0, "s"

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    const-string v0, "S"

    sput-object v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static format([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;
    .registers 20
    .param p0    # [Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # Z

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    array-length v6, p0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v6, :cond_fc

    aget-object v7, p0, v3

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->getCount()I

    move-result v2

    instance-of v9, v8, Ljava/lang/StringBuffer;

    if-eqz v9, :cond_22

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_22
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    if-ne v8, v9, :cond_3c

    if-eqz p8, :cond_37

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_32
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_1f

    :cond_37
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_32

    :cond_3c
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    if-ne v8, v9, :cond_56

    if-eqz p8, :cond_51

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_4c
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_1f

    :cond_51
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4c

    :cond_56
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    if-ne v8, v9, :cond_70

    if-eqz p8, :cond_6b

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_66
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_1f

    :cond_6b
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_66

    :cond_70
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    if-ne v8, v9, :cond_8a

    if-eqz p8, :cond_85

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_80
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_1f

    :cond_85
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_80

    :cond_8a
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    if-ne v8, v9, :cond_a4

    if-eqz p8, :cond_9f

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_9a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    goto :goto_1f

    :cond_9f
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9a

    :cond_a4
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    if-ne v8, v9, :cond_bf

    if-eqz p8, :cond_ba

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_b4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v4, 0x1

    goto/16 :goto_1f

    :cond_ba
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b4

    :cond_bf
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    if-ne v8, v9, :cond_1f

    if-eqz v4, :cond_e7

    move/from16 v0, p7

    add-int/lit16 v0, v0, 0x3e8

    move/from16 p7, v0

    if-eqz p8, :cond_e2

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    :goto_d7
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_df
    const/4 v4, 0x0

    goto/16 :goto_1f

    :cond_e2
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d7

    :cond_e7
    if-eqz p8, :cond_f7

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v9, v2, v10}, Lexternal/org/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v9

    :goto_f3
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_df

    :cond_f7
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_f3

    :cond_fc
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # J
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .param p0    # J
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v1, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-wide/32 v1, 0x5265c00

    div-long v1, p0, v1

    long-to-int v3, v1

    int-to-long v1, v3

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_1d
    sget-object v1, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-wide/32 v1, 0x36ee80

    div-long v1, p0, v1

    long-to-int v4, v1

    int-to-long v1, v4

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_31
    sget-object v1, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-wide/32 v1, 0xea60

    div-long v1, p0, v1

    long-to-int v5, v1

    int-to-long v1, v5

    const-wide/32 v8, 0xea60

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_45
    sget-object v1, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-wide/16 v1, 0x3e8

    div-long v1, p0, v1

    long-to-int v6, v1

    int-to-long v1, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v1, v8

    sub-long/2addr p0, v1

    :cond_57
    sget-object v1, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    long-to-int v7, p0

    :cond_60
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v8, p3

    invoke-static/range {v0 .. v8}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->format([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .registers 3
    .param p0    # J

    const-string v0, "H:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .registers 4
    .param p0    # J

    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .registers 8
    .param p0    # J
    .param p2    # Z
    .param p3    # Z

    const-string v2, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v2}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_67

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " 0 days"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5c

    move-object v0, v1

    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5c

    move-object v0, v1

    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5c

    const-string v2, " 0 seconds"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_67

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_67
    if-eqz p3, :cond_a9

    const-string v2, " 0 seconds"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a9

    move-object v0, v1

    const-string v2, " 0 minutes"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a9

    move-object v0, v1

    const-string v2, " 0 hours"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_a9

    const-string v2, " 0 days"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, " 1 seconds"

    const-string v3, " 1 second"

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " 1 minutes"

    const-string v3, " 1 minute"

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " 1 hours"

    const-string v3, " 1 hour"

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " 1 days"

    const-string v3, " 1 day"

    invoke-static {v0, v2, v3}, Lexternal/org/apache/commons/lang3/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0    # J
    .param p2    # J
    .param p4    # Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .registers 22
    .param p0    # J
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Z
    .param p6    # Ljava/util/TimeZone;

    invoke-static/range {p4 .. p4}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    move-result-object v2

    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v12

    new-instance v10, Ljava/util/Date;

    move-wide v0, p0

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    new-instance v10, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v10, 0xe

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xe

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v9, v10, v14

    const/16 v10, 0xd

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xd

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v8, v10, v14

    const/16 v10, 0xc

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xc

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v7, v10, v14

    const/16 v10, 0xb

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0xb

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v6, v10, v14

    const/4 v10, 0x5

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x5

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v5, v10, v14

    const/4 v10, 0x2

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x2

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v4, v10, v14

    const/4 v10, 0x1

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int v3, v10, v14

    :goto_7b
    if-gez v9, :cond_82

    add-int/lit16 v9, v9, 0x3e8

    add-int/lit8 v8, v8, -0x1

    goto :goto_7b

    :cond_82
    :goto_82
    if-gez v8, :cond_89

    add-int/lit8 v8, v8, 0x3c

    add-int/lit8 v7, v7, -0x1

    goto :goto_82

    :cond_89
    :goto_89
    if-gez v7, :cond_90

    add-int/lit8 v7, v7, 0x3c

    add-int/lit8 v6, v6, -0x1

    goto :goto_89

    :cond_90
    :goto_90
    if-gez v6, :cond_97

    add-int/lit8 v6, v6, 0x18

    add-int/lit8 v5, v5, -0x1

    goto :goto_90

    :cond_97
    sget-object v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    invoke-static {v2, v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c7

    :goto_9f
    if-gez v5, :cond_af

    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v4, v4, -0x1

    const/4 v10, 0x2

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_9f

    :cond_af
    :goto_af
    if-gez v4, :cond_b6

    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v3, v3, -0x1

    goto :goto_af

    :cond_b6
    sget-object v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v2, v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_138

    if-eqz v3, :cond_138

    :goto_c0
    if-eqz v3, :cond_138

    mul-int/lit8 v10, v3, 0xc

    add-int/2addr v4, v10

    const/4 v3, 0x0

    goto :goto_c0

    :cond_c7
    sget-object v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    invoke-static {v2, v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10f

    const/4 v10, 0x1

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v13

    if-gez v4, :cond_d8

    add-int/lit8 v13, v13, -0x1

    :cond_d8
    :goto_d8
    const/4 v10, 0x1

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v10, v13, :cond_10e

    const/4 v10, 0x6

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    const/4 v14, 0x6

    invoke-virtual {v12, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int/2addr v10, v14

    add-int/2addr v5, v10

    instance-of v10, v12, Ljava/util/GregorianCalendar;

    if-eqz v10, :cond_102

    const/4 v10, 0x2

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x1

    if-ne v10, v14, :cond_102

    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v14, 0x1d

    if-ne v10, v14, :cond_102

    add-int/lit8 v5, v5, 0x1

    :cond_102
    const/4 v10, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    const/4 v10, 0x6

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v5, v10

    goto :goto_d8

    :cond_10e
    const/4 v3, 0x0

    :cond_10f
    :goto_10f
    const/4 v10, 0x2

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v14, 0x2

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eq v10, v14, :cond_127

    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    add-int/2addr v5, v10

    const/4 v10, 0x2

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_10f

    :cond_127
    const/4 v4, 0x0

    :goto_128
    if-gez v5, :cond_138

    const/4 v10, 0x5

    invoke-virtual {v12, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v10

    add-int/2addr v5, v10

    add-int/lit8 v4, v4, -0x1

    const/4 v10, 0x2

    const/4 v14, 0x1

    invoke-virtual {v12, v10, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_128

    :cond_138
    sget-object v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    invoke-static {v2, v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_144

    mul-int/lit8 v10, v5, 0x18

    add-int/2addr v6, v10

    const/4 v5, 0x0

    :cond_144
    sget-object v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    invoke-static {v2, v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_150

    mul-int/lit8 v10, v6, 0x3c

    add-int/2addr v7, v10

    const/4 v6, 0x0

    :cond_150
    sget-object v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    invoke-static {v2, v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15c

    mul-int/lit8 v10, v7, 0x3c

    add-int/2addr v8, v10

    const/4 v7, 0x0

    :cond_15c
    sget-object v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    invoke-static {v2, v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_168

    mul-int/lit16 v10, v8, 0x3e8

    add-int/2addr v9, v10

    const/4 v8, 0x0

    :cond_168
    move/from16 v10, p5

    invoke-static/range {v2 .. v10}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->format([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;IIIIIIIZ)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .registers 11
    .param p0    # J
    .param p2    # J

    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;
    .registers 12
    .param p0    # Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    array-length v10, v0

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    array-length v7, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v7, :cond_77

    aget-char v2, v0, v3

    if-eqz v4, :cond_1f

    const/16 v10, 0x27

    if-eq v2, v10, :cond_1f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    const/4 v9, 0x0

    sparse-switch v2, :sswitch_data_84

    if-nez v1, :cond_32

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v10, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_35
    if-eqz v9, :cond_1c

    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_6d

    invoke-virtual {v6}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->increment()V

    :goto_42
    const/4 v1, 0x0

    goto :goto_1c

    :sswitch_44
    if-eqz v4, :cond_49

    const/4 v1, 0x0

    const/4 v4, 0x0

    goto :goto_35

    :cond_49
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v10, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v10, v1}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_35

    :sswitch_58
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->y:Ljava/lang/Object;

    goto :goto_35

    :sswitch_5b
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->M:Ljava/lang/Object;

    goto :goto_35

    :sswitch_5e
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->d:Ljava/lang/Object;

    goto :goto_35

    :sswitch_61
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->H:Ljava/lang/Object;

    goto :goto_35

    :sswitch_64
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->m:Ljava/lang/Object;

    goto :goto_35

    :sswitch_67
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->s:Ljava/lang/Object;

    goto :goto_35

    :sswitch_6a
    sget-object v9, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;->S:Ljava/lang/Object;

    goto :goto_35

    :cond_6d
    new-instance v8, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-direct {v8, v9}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v8

    goto :goto_42

    :cond_77
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    return-object v10

    :sswitch_data_84
    .sparse-switch
        0x27 -> :sswitch_44
        0x48 -> :sswitch_61
        0x4d -> :sswitch_5b
        0x53 -> :sswitch_6a
        0x64 -> :sswitch_5e
        0x6d -> :sswitch_64
        0x73 -> :sswitch_67
        0x79 -> :sswitch_58
    .end sparse-switch
.end method
