.class Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field private count:I

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .registers 3
    .param p1    # Ljava/lang/Object;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iput p2, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method static containsTokenWithValue([Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .registers 5
    .param p0    # [Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;
    .param p1    # Ljava/lang/Object;

    array-length v1, p0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_11

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_e

    const/4 v2, 0x1

    :goto_d
    return v2

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    const/4 v2, 0x0

    goto :goto_d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v2, p1, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    if-eqz v2, :cond_16

    move-object v0, p1

    check-cast v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_17

    :cond_16
    :goto_16
    return v1

    :cond_17
    iget v2, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    iget v3, v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    if-ne v2, v3, :cond_16

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_34

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_16

    :cond_34
    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_43

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v2, v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_16

    :cond_43
    iget-object v2, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    iget-object v3, v0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_16

    const/4 v1, 0x1

    goto :goto_16
.end method

.method getCount()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lexternal/org/apache/commons/lang3/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lexternal/org/apache/commons/lang3/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
