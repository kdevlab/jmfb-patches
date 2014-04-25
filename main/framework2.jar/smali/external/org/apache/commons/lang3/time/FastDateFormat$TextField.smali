.class Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;
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
    name = "TextField"
.end annotation


# instance fields
.field private final mField:I

.field private final mValues:[Ljava/lang/String;


# direct methods
.method constructor <init>(I[Ljava/lang/String;)V
    .registers 3
    .param p1    # I
    .param p2    # [Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;->mField:I

    iput-object p2, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/util/Calendar;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    iget v1, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;->mField:I

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public estimateLength()I
    .registers 5

    const/4 v2, 0x0

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    array-length v0, v3

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/time/FastDateFormat$TextField;->mValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_14
    return v2
.end method
