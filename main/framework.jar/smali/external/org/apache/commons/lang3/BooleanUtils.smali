.class public Lexternal/org/apache/commons/lang3/BooleanUtils;
.super Ljava/lang/Object;
.source "BooleanUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs and([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .param p0    # [Ljava/lang/Boolean;

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :try_start_15
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v1

    invoke-static {v1}, Lexternal/org/apache/commons/lang3/BooleanUtils;->and([Z)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_21
    return-object v2

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_21

    :catch_25
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs and([Z)Z
    .registers 7
    .param p0    # [Z

    if-nez p0, :cond_a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The Array must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    array-length v4, p0

    if-nez v4, :cond_15

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Array is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_15
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v3, :cond_23

    aget-boolean v1, v0, v2

    if-nez v1, :cond_20

    const/4 v4, 0x0

    :goto_1f
    return v4

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_23
    const/4 v4, 0x1

    goto :goto_1f
.end method

.method public static isFalse(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0    # Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNotFalse(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0    # Ljava/lang/Boolean;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/BooleanUtils;->isFalse(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isNotTrue(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0    # Ljava/lang/Boolean;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/BooleanUtils;->isTrue(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isTrue(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0    # Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static negate(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0    # Ljava/lang/Boolean;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static varargs or([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .param p0    # [Ljava/lang/Boolean;

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :try_start_15
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v1

    invoke-static {v1}, Lexternal/org/apache/commons/lang3/BooleanUtils;->or([Z)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_21
    return-object v2

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_21

    :catch_25
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs or([Z)Z
    .registers 7
    .param p0    # [Z

    if-nez p0, :cond_a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The Array must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    array-length v4, p0

    if-nez v4, :cond_15

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Array is empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_15
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v3, :cond_23

    aget-boolean v1, v0, v2

    if-eqz v1, :cond_20

    const/4 v4, 0x1

    :goto_1f
    return v4

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_23
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method public static toBoolean(I)Z
    .registers 2
    .param p0    # I

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toBoolean(III)Z
    .registers 5
    .param p0    # I
    .param p1    # I
    .param p2    # I

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-ne p0, p2, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/Boolean;)Z
    .registers 2
    .param p0    # Ljava/lang/Boolean;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toBoolean(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 6
    .param p0    # Ljava/lang/Integer;
    .param p1    # Ljava/lang/Integer;
    .param p2    # Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_b

    if-nez p1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-nez p2, :cond_19

    move v0, v1

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_6

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/BooleanUtils;->toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static toBoolean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-ne p0, p2, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    if-eqz p0, :cond_19

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match either specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanDefaultIfNull(Ljava/lang/Boolean;Z)Z
    .registers 2
    .param p0    # Ljava/lang/Boolean;
    .param p1    # Z

    if-nez p0, :cond_3

    :goto_2
    return p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2
.end method

.method public static toBooleanObject(I)Ljava/lang/Boolean;
    .registers 2
    .param p0    # I

    if-nez p0, :cond_5

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public static toBooleanObject(IIII)Ljava/lang/Boolean;
    .registers 6
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I

    if-ne p0, p1, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_5
    if-ne p0, p2, :cond_a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_a
    if-ne p0, p3, :cond_e

    const/4 v0, 0x0

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBooleanObject(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 2
    .param p0    # Ljava/lang/Integer;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public static toBooleanObject(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .registers 6
    .param p0    # Ljava/lang/Integer;
    .param p1    # Ljava/lang/Integer;
    .param p2    # Ljava/lang/Integer;
    .param p3    # Ljava/lang/Integer;

    const/4 v0, 0x0

    if-nez p0, :cond_17

    if-nez p1, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-nez p2, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    if-eqz p3, :cond_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Integer did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 12
    .param p0    # Ljava/lang/String;

    const/4 v10, 0x2

    const/16 v9, 0x66

    const/16 v8, 0x46

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "true"

    if-ne p0, v5, :cond_e

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_d
    return-object v5

    :cond_e
    if-nez p0, :cond_12

    const/4 v5, 0x0

    goto :goto_d

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_11e

    :cond_19
    const/4 v5, 0x0

    goto :goto_d

    :pswitch_1b
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x79

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x59

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x74

    if-eq v0, v5, :cond_2f

    const/16 v5, 0x54

    if-ne v0, v5, :cond_32

    :cond_2f
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_32
    const/16 v5, 0x6e

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x4e

    if-eq v0, v5, :cond_3e

    if-eq v0, v9, :cond_3e

    if-ne v0, v8, :cond_19

    :cond_3e
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    :pswitch_41
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x6f

    if-eq v0, v5, :cond_51

    const/16 v5, 0x4f

    if-ne v0, v5, :cond_5c

    :cond_51
    const/16 v5, 0x6e

    if-eq v1, v5, :cond_59

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_5c

    :cond_59
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_d

    :cond_5c
    const/16 v5, 0x6e

    if-eq v0, v5, :cond_64

    const/16 v5, 0x4e

    if-ne v0, v5, :cond_19

    :cond_64
    const/16 v5, 0x6f

    if-eq v1, v5, :cond_6c

    const/16 v5, 0x4f

    if-ne v1, v5, :cond_19

    :cond_6c
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_d

    :pswitch_6f
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x79

    if-eq v0, v5, :cond_83

    const/16 v5, 0x59

    if-ne v0, v5, :cond_97

    :cond_83
    const/16 v5, 0x65

    if-eq v1, v5, :cond_8b

    const/16 v5, 0x45

    if-ne v1, v5, :cond_97

    :cond_8b
    const/16 v5, 0x73

    if-eq v2, v5, :cond_93

    const/16 v5, 0x53

    if-ne v2, v5, :cond_97

    :cond_93
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :cond_97
    const/16 v5, 0x6f

    if-eq v0, v5, :cond_9f

    const/16 v5, 0x4f

    if-ne v0, v5, :cond_19

    :cond_9f
    if-eq v1, v9, :cond_a3

    if-ne v1, v8, :cond_19

    :cond_a3
    if-eq v2, v9, :cond_a7

    if-ne v2, v8, :cond_19

    :cond_a7
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :pswitch_ab
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x74

    if-eq v0, v5, :cond_c4

    const/16 v5, 0x54

    if-ne v0, v5, :cond_19

    :cond_c4
    const/16 v5, 0x72

    if-eq v1, v5, :cond_cc

    const/16 v5, 0x52

    if-ne v1, v5, :cond_19

    :cond_cc
    const/16 v5, 0x75

    if-eq v2, v5, :cond_d4

    const/16 v5, 0x55

    if-ne v2, v5, :cond_19

    :cond_d4
    const/16 v5, 0x65

    if-eq v3, v5, :cond_dc

    const/16 v5, 0x45

    if-ne v3, v5, :cond_19

    :cond_dc
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :pswitch_e0
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v9, :cond_fa

    if-ne v0, v8, :cond_19

    :cond_fa
    const/16 v5, 0x61

    if-eq v1, v5, :cond_102

    const/16 v5, 0x41

    if-ne v1, v5, :cond_19

    :cond_102
    const/16 v5, 0x6c

    if-eq v2, v5, :cond_10a

    const/16 v5, 0x4c

    if-ne v2, v5, :cond_19

    :cond_10a
    const/16 v5, 0x73

    if-eq v3, v5, :cond_112

    const/16 v5, 0x53

    if-ne v3, v5, :cond_19

    :cond_112
    const/16 v5, 0x65

    if-eq v4, v5, :cond_11a

    const/16 v5, 0x45

    if-ne v4, v5, :cond_19

    :cond_11a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_41
        :pswitch_6f
        :pswitch_ab
        :pswitch_e0
    .end packed-switch
.end method

.method public static toBooleanObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p0, :cond_17

    if-nez p1, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    if-nez p2, :cond_d

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    if-eqz p3, :cond_7

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The String did not match any specified value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_29
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7
.end method

.method public static toInteger(Ljava/lang/Boolean;III)I
    .registers 5
    .param p0    # Ljava/lang/Boolean;
    .param p1    # I
    .param p2    # I
    .param p3    # I

    if-nez p0, :cond_3

    :goto_2
    return p3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    move p3, p1

    goto :goto_2

    :cond_b
    move p1, p2

    goto :goto_9
.end method

.method public static toInteger(Z)I
    .registers 2
    .param p0    # Z

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static toInteger(ZII)I
    .registers 3
    .param p0    # Z
    .param p1    # I
    .param p2    # I

    if-eqz p0, :cond_3

    :goto_2
    return p1

    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;)Ljava/lang/Integer;
    .registers 2
    .param p0    # Ljava/lang/Boolean;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    goto :goto_3

    :cond_d
    sget-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_3
.end method

.method public static toIntegerObject(Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .param p0    # Ljava/lang/Boolean;
    .param p1    # Ljava/lang/Integer;
    .param p2    # Ljava/lang/Integer;
    .param p3    # Ljava/lang/Integer;

    if-nez p0, :cond_3

    :goto_2
    return-object p3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    move-object p3, p1

    goto :goto_2

    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toIntegerObject(Z)Ljava/lang/Integer;
    .registers 2
    .param p0    # Z

    if-eqz p0, :cond_5

    sget-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    goto :goto_4
.end method

.method public static toIntegerObject(ZLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 3
    .param p0    # Z
    .param p1    # Ljava/lang/Integer;
    .param p2    # Ljava/lang/Integer;

    if-eqz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/Boolean;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    if-nez p0, :cond_3

    :goto_2
    return-object p3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_9
    move-object p3, p1

    goto :goto_2

    :cond_b
    move-object p1, p2

    goto :goto_9
.end method

.method public static toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Z
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    if-eqz p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    move-object p1, p2

    goto :goto_2
.end method

.method public static toStringOnOff(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/Boolean;

    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringOnOff(Z)Ljava/lang/String;
    .registers 3
    .param p0    # Z

    const-string v0, "on"

    const-string v1, "off"

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/Boolean;

    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringTrueFalse(Z)Ljava/lang/String;
    .registers 3
    .param p0    # Z

    const-string v0, "true"

    const-string v1, "false"

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/Boolean;

    const-string v0, "yes"

    const-string v1, "no"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/BooleanUtils;->toString(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringYesNo(Z)Ljava/lang/String;
    .registers 3
    .param p0    # Z

    const-string v0, "yes"

    const-string v1, "no"

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/BooleanUtils;->toString(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs xor([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 5
    .param p0    # [Ljava/lang/Boolean;

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    :try_start_15
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->toPrimitive([Ljava/lang/Boolean;)[Z

    move-result-object v1

    invoke-static {v1}, Lexternal/org/apache/commons/lang3/BooleanUtils;->xor([Z)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_21
    return-object v2

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_24} :catch_25

    goto :goto_21

    :catch_25
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The array must not contain any null elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs xor([Z)Z
    .registers 9
    .param p0    # [Z

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p0, :cond_c

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The Array must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_c
    array-length v7, p0

    if-nez v7, :cond_17

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Array is empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_17
    const/4 v4, 0x0

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v3, :cond_28

    aget-boolean v1, v0, v2

    if-eqz v1, :cond_25

    if-ge v4, v5, :cond_2b

    add-int/lit8 v4, v4, 0x1

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_28
    if-ne v4, v5, :cond_2c

    :goto_2a
    move v6, v5

    :cond_2b
    return v6

    :cond_2c
    move v5, v6

    goto :goto_2a
.end method
