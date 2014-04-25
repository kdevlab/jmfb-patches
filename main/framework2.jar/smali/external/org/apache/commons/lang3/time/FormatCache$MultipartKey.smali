.class Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexternal/org/apache/commons/lang3/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipartKey"
.end annotation


# instance fields
.field private hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .param p1    # [Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    check-cast p1, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;

    iget-object v1, p1, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 8

    iget v5, p0, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    if-nez v5, :cond_1c

    const/4 v4, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;->keys:[Ljava/lang/Object;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v3, :cond_1a

    aget-object v2, v0, v1

    if-eqz v2, :cond_17

    mul-int/lit8 v5, v4, 0x7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    iput v4, p0, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    :cond_1c
    iget v5, p0, Lexternal/org/apache/commons/lang3/time/FormatCache$MultipartKey;->hashCode:I

    return v5
.end method
