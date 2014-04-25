.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;
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
    name = "TwoDigitMonthField"
.end annotation


# static fields
.field static final INSTANCE:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;->INSTANCE:Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final appendTo(Ljava/lang/StringBuffer;I)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # I

    div-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    rem-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TwoDigitMonthField;->appendTo(Ljava/lang/StringBuffer;I)V

    return-void
.end method

.method public estimateLength()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
