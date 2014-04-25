.class public Lexternal/org/apache/commons/lang3/BitField;
.super Ljava/lang/Object;
.source "BitField.java"


# instance fields
.field private final _mask:I

.field private final _shift_count:I


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    const/4 v1, 0x0

    move v0, p1

    if-eqz v0, :cond_12

    :goto_9
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_12
    iput v1, p0, Lexternal/org/apache/commons/lang3/BitField;->_shift_count:I

    return-void
.end method


# virtual methods
.method public clear(I)I
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method public clearByte(B)B
    .registers 3
    .param p1    # B

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->clear(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public clearShort(S)S
    .registers 3
    .param p1    # S

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->clear(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRawValue(I)I
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method public getShortRawValue(S)S
    .registers 3
    .param p1    # S

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getShortValue(S)S
    .registers 3
    .param p1    # S

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->getValue(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getValue(I)I
    .registers 4
    .param p1    # I

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->getRawValue(I)I

    move-result v0

    iget v1, p0, Lexternal/org/apache/commons/lang3/BitField;->_shift_count:I

    shr-int/2addr v0, v1

    return v0
.end method

.method public isAllSet(I)Z
    .registers 4
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr v0, p1

    iget v1, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isSet(I)Z
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set(I)I
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    or-int/2addr v0, p1

    return v0
.end method

.method public setBoolean(IZ)I
    .registers 4
    .param p1    # I
    .param p2    # Z

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->set(I)I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->clear(I)I

    move-result v0

    goto :goto_6
.end method

.method public setByte(B)B
    .registers 3
    .param p1    # B

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->set(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public setByteBoolean(BZ)B
    .registers 4
    .param p1    # B
    .param p2    # Z

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->setByte(B)B

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->clearByte(B)B

    move-result v0

    goto :goto_6
.end method

.method public setShort(S)S
    .registers 3
    .param p1    # S

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->set(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setShortBoolean(SZ)S
    .registers 4
    .param p1    # S
    .param p2    # Z

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->setShort(S)S

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/BitField;->clearShort(S)S

    move-result v0

    goto :goto_6
.end method

.method public setShortValue(SS)S
    .registers 4
    .param p1    # S
    .param p2    # S

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/BitField;->setValue(II)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public setValue(II)I
    .registers 6
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lexternal/org/apache/commons/lang3/BitField;->_shift_count:I

    shl-int v1, p2, v1

    iget v2, p0, Lexternal/org/apache/commons/lang3/BitField;->_mask:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method
