.class public Lexternal/org/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    const-wide/high16 v0, -0x4010000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    const/high16 v0, 0x3f800000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    const/high16 v0, -0x40800000

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 3
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_3
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 15
    .param p0    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v6, 0x0

    :cond_3
    :goto_3
    return-object v6

    :cond_4
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    new-instance v10, Ljava/lang/NumberFormatException;

    const-string v11, "A blank string is not a valid number"

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_12
    const-string v10, "--"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v6, 0x0

    goto :goto_3

    :cond_1c
    const-string v10, "0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3c

    const-string v10, "-0x"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3c

    const-string v10, "0X"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3c

    const-string v10, "-0X"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_41

    :cond_3c
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v10, 0x2e

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v10, 0x65

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/16 v11, 0x45

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x1

    const/4 v10, -0x1

    if-le v3, v10, :cond_ee

    const/4 v10, -0x1

    if-le v5, v10, :cond_e7

    if-lt v5, v3, :cond_6e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_87

    :cond_6e
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_87
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_8d
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_92
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_198

    const/16 v10, 0x2e

    if-eq v7, v10, :cond_198

    const/4 v10, -0x1

    if-le v5, v10, :cond_11a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_11a

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_b3
    const/4 v10, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11c

    invoke-static {v4}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11c

    const/4 v0, 0x1

    :goto_cb
    sparse-switch v7, :sswitch_data_214

    :goto_ce
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_e7
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_8d

    :cond_ee
    const/4 v10, -0x1

    if-le v5, v10, :cond_118

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_110

    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_110
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_115
    const/4 v2, 0x0

    goto/16 :goto_92

    :cond_118
    move-object v8, p0

    goto :goto_115

    :cond_11a
    const/4 v4, 0x0

    goto :goto_b3

    :cond_11c
    const/4 v0, 0x0

    goto :goto_cb

    :sswitch_11e
    if-nez v2, :cond_149

    if-nez v4, :cond_149

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_136

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13c

    :cond_136
    invoke-static {v9}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_149

    :cond_13c
    :try_start_13c
    invoke-static {v9}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_13f
    .catch Ljava/lang/NumberFormatException; {:try_start_13c .. :try_end_13f} :catch_142

    move-result-object v6

    goto/16 :goto_3

    :catch_142
    move-exception v10

    invoke-static {v9}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_3

    :cond_149
    new-instance v10, Ljava/lang/NumberFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a valid number."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :sswitch_162
    :try_start_162
    invoke-static {v9}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_177

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_16f
    .catch Ljava/lang/NumberFormatException; {:try_start_162 .. :try_end_16f} :catch_210

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    if-nez v0, :cond_3

    :cond_177
    :goto_177
    :sswitch_177
    :try_start_177
    invoke-static {v9}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_192

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F
    :try_end_184
    .catch Ljava/lang/NumberFormatException; {:try_start_177 .. :try_end_184} :catch_191

    move-result v10

    float-to-double v10, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_18e

    if-eqz v0, :cond_192

    :cond_18e
    move-object v6, v1

    goto/16 :goto_3

    :catch_191
    move-exception v10

    :cond_192
    :try_start_192
    invoke-static {v9}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    :try_end_195
    .catch Ljava/lang/NumberFormatException; {:try_start_192 .. :try_end_195} :catch_20b

    move-result-object v6

    goto/16 :goto_3

    :cond_198
    const/4 v10, -0x1

    if-le v5, v10, :cond_1b7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ge v5, v10, :cond_1b7

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1ad
    if-nez v2, :cond_1c7

    if-nez v4, :cond_1c7

    :try_start_1b1
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1b4
    .catch Ljava/lang/NumberFormatException; {:try_start_1b1 .. :try_end_1b4} :catch_1b9

    move-result-object v6

    goto/16 :goto_3

    :cond_1b7
    const/4 v4, 0x0

    goto :goto_1ad

    :catch_1b9
    move-exception v10

    :try_start_1ba
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1bd
    .catch Ljava/lang/NumberFormatException; {:try_start_1ba .. :try_end_1bd} :catch_1c0

    move-result-object v6

    goto/16 :goto_3

    :catch_1c0
    move-exception v10

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    goto/16 :goto_3

    :cond_1c7
    invoke-static {v8}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_202

    invoke-static {v4}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_202

    const/4 v0, 0x1

    :goto_1d4
    :try_start_1d4
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_1e9

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F
    :try_end_1e1
    .catch Ljava/lang/NumberFormatException; {:try_start_1d4 .. :try_end_1e1} :catch_20e

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    if-nez v0, :cond_3

    :cond_1e9
    :goto_1e9
    :try_start_1e9
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_205

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_1f6
    .catch Ljava/lang/NumberFormatException; {:try_start_1e9 .. :try_end_1f6} :catch_204

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1ff

    if-eqz v0, :cond_205

    :cond_1ff
    move-object v6, v1

    goto/16 :goto_3

    :cond_202
    const/4 v0, 0x0

    goto :goto_1d4

    :catch_204
    move-exception v10

    :cond_205
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v6

    goto/16 :goto_3

    :catch_20b
    move-exception v10

    goto/16 :goto_ce

    :catch_20e
    move-exception v10

    goto :goto_1e9

    :catch_210
    move-exception v10

    goto/16 :goto_177

    nop

    :sswitch_data_214
    .sparse-switch
        0x44 -> :sswitch_177
        0x46 -> :sswitch_162
        0x4c -> :sswitch_11e
        0x64 -> :sswitch_177
        0x66 -> :sswitch_162
        0x6c -> :sswitch_11e
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .registers 6
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_b
    if-ltz v0, :cond_1a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_17

    move v1, v2

    goto :goto_4

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .registers 4
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    :goto_7
    return v1

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 16
    .param p0    # Ljava/lang/String;

    const/16 v14, 0x2d

    const/16 v13, 0x39

    const/16 v12, 0x30

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    :goto_e
    return v9

    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v7, v1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    aget-char v10, v1, v9

    if-ne v10, v14, :cond_57

    move v6, v8

    :goto_1d
    add-int/lit8 v10, v6, 0x1

    if-le v7, v10, :cond_5b

    aget-char v10, v1, v6

    if-ne v10, v12, :cond_5b

    add-int/lit8 v10, v6, 0x1

    aget-char v10, v1, v10

    const/16 v11, 0x78

    if-ne v10, v11, :cond_5b

    add-int/lit8 v5, v6, 0x2

    if-eq v5, v7, :cond_e

    :goto_31
    array-length v10, v1

    if-ge v5, v10, :cond_59

    aget-char v10, v1, v5

    if-lt v10, v12, :cond_3c

    aget-char v10, v1, v5

    if-le v10, v13, :cond_54

    :cond_3c
    aget-char v10, v1, v5

    const/16 v11, 0x61

    if-lt v10, v11, :cond_48

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-le v10, v11, :cond_54

    :cond_48
    aget-char v10, v1, v5

    const/16 v11, 0x41

    if-lt v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-gt v10, v11, :cond_e

    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_57
    move v6, v9

    goto :goto_1d

    :cond_59
    move v9, v8

    goto :goto_e

    :cond_5b
    add-int/lit8 v7, v7, -0x1

    move v5, v6

    :goto_5e
    if-lt v5, v7, :cond_68

    add-int/lit8 v10, v7, 0x1

    if-ge v5, v10, :cond_a3

    if-eqz v0, :cond_a3

    if-nez v2, :cond_a3

    :cond_68
    aget-char v10, v1, v5

    if-lt v10, v12, :cond_75

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_75

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    :cond_75
    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_81

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    const/4 v3, 0x1

    goto :goto_72

    :cond_81
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_8d

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-ne v10, v11, :cond_94

    :cond_8d
    if-nez v4, :cond_e

    if-eqz v2, :cond_e

    const/4 v4, 0x1

    const/4 v0, 0x1

    goto :goto_72

    :cond_94
    aget-char v10, v1, v5

    const/16 v11, 0x2b

    if-eq v10, v11, :cond_9e

    aget-char v10, v1, v5

    if-ne v10, v14, :cond_e

    :cond_9e
    if-eqz v0, :cond_e

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto :goto_72

    :cond_a3
    array-length v10, v1

    if-ge v5, v10, :cond_fe

    aget-char v10, v1, v5

    if-lt v10, v12, :cond_b1

    aget-char v10, v1, v5

    if-gt v10, v13, :cond_b1

    move v9, v8

    goto/16 :goto_e

    :cond_b1
    aget-char v10, v1, v5

    const/16 v11, 0x65

    if-eq v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x45

    if-eq v10, v11, :cond_e

    aget-char v10, v1, v5

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_ca

    if-nez v3, :cond_e

    if-nez v4, :cond_e

    move v9, v2

    goto/16 :goto_e

    :cond_ca
    if-nez v0, :cond_e7

    aget-char v10, v1, v5

    const/16 v11, 0x64

    if-eq v10, v11, :cond_e4

    aget-char v10, v1, v5

    const/16 v11, 0x44

    if-eq v10, v11, :cond_e4

    aget-char v10, v1, v5

    const/16 v11, 0x66

    if-eq v10, v11, :cond_e4

    aget-char v10, v1, v5

    const/16 v11, 0x46

    if-ne v10, v11, :cond_e7

    :cond_e4
    move v9, v2

    goto/16 :goto_e

    :cond_e7
    aget-char v10, v1, v5

    const/16 v11, 0x6c

    if-eq v10, v11, :cond_f3

    aget-char v10, v1, v5

    const/16 v11, 0x4c

    if-ne v10, v11, :cond_e

    :cond_f3
    if-eqz v2, :cond_fc

    if-nez v4, :cond_fc

    if-nez v3, :cond_fc

    :goto_f9
    move v9, v8

    goto/16 :goto_e

    :cond_fc
    move v8, v9

    goto :goto_f9

    :cond_fe
    if-nez v0, :cond_105

    if-eqz v2, :cond_105

    :goto_102
    move v9, v8

    goto/16 :goto_e

    :cond_105
    move v8, v9

    goto :goto_102
.end method

.method public static max(BBB)B
    .registers 3
    .param p0    # B
    .param p1    # B
    .param p2    # B

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    move p0, p2

    :cond_6
    return p0
.end method

.method public static max([B)B
    .registers 5
    .param p0    # [B

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget-byte v2, p0, v0

    if-le v2, v1, :cond_22

    aget-byte v1, p0, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method

.method public static max(DDD)D
    .registers 8
    .param p0    # D
    .param p2    # D
    .param p4    # D

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .registers 6
    .param p0    # [D

    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    array-length v3, p0

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    const/4 v0, 0x1

    :goto_19
    array-length v3, p0

    if-ge v0, v3, :cond_26

    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_27

    const-wide/high16 v1, 0x7ff8000000000000L

    :cond_26
    return-wide v1

    :cond_27
    aget-wide v3, p0, v0

    cmpl-double v3, v3, v1

    if-lez v3, :cond_2f

    aget-wide v1, p0, v0

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static max(FFF)F
    .registers 4
    .param p0    # F
    .param p1    # F
    .param p2    # F

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .registers 5
    .param p0    # [F

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_26

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_27

    const/high16 v1, 0x7fc00000

    :cond_26
    return v1

    :cond_27
    aget v2, p0, v0

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2f

    aget v1, p0, v0

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static max(III)I
    .registers 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    move p0, p2

    :cond_6
    return p0
.end method

.method public static max([I)I
    .registers 5
    .param p0    # [I

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget v2, p0, v0

    if-le v2, v1, :cond_22

    aget v1, p0, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method

.method public static max(JJJ)J
    .registers 7
    .param p0    # J
    .param p2    # J
    .param p4    # J

    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long v0, p4, p0

    if-lez v0, :cond_a

    move-wide p0, p4

    :cond_a
    return-wide p0
.end method

.method public static max([J)J
    .registers 6
    .param p0    # [J

    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    array-length v3, p0

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    const/4 v0, 0x1

    :goto_19
    array-length v3, p0

    if-ge v0, v3, :cond_27

    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-lez v3, :cond_24

    aget-wide v1, p0, v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_27
    return-wide v1
.end method

.method public static max(SSS)S
    .registers 3
    .param p0    # S
    .param p1    # S
    .param p2    # S

    if-le p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-le p2, p0, :cond_6

    move p0, p2

    :cond_6
    return p0
.end method

.method public static max([S)S
    .registers 5
    .param p0    # [S

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget-short v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget-short v2, p0, v0

    if-le v2, v1, :cond_22

    aget-short v1, p0, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method

.method public static min(BBB)B
    .registers 3
    .param p0    # B
    .param p1    # B
    .param p2    # B

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    move p0, p2

    :cond_6
    return p0
.end method

.method public static min([B)B
    .registers 5
    .param p0    # [B

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget-byte v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget-byte v2, p0, v0

    if-ge v2, v1, :cond_22

    aget-byte v1, p0, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method

.method public static min(DDD)D
    .registers 8
    .param p0    # D
    .param p2    # D
    .param p4    # D

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .registers 6
    .param p0    # [D

    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    array-length v3, p0

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    const/4 v0, 0x1

    :goto_19
    array-length v3, p0

    if-ge v0, v3, :cond_26

    aget-wide v3, p0, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_27

    const-wide/high16 v1, 0x7ff8000000000000L

    :cond_26
    return-wide v1

    :cond_27
    aget-wide v3, p0, v0

    cmpg-double v3, v3, v1

    if-gez v3, :cond_2f

    aget-wide v1, p0, v0

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static min(FFF)F
    .registers 4
    .param p0    # F
    .param p1    # F
    .param p2    # F

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .registers 5
    .param p0    # [F

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_26

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_27

    const/high16 v1, 0x7fc00000

    :cond_26
    return v1

    :cond_27
    aget v2, p0, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2f

    aget v1, p0, v0

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public static min(III)I
    .registers 3
    .param p0    # I
    .param p1    # I
    .param p2    # I

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    move p0, p2

    :cond_6
    return p0
.end method

.method public static min([I)I
    .registers 5
    .param p0    # [I

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget v2, p0, v0

    if-ge v2, v1, :cond_22

    aget v1, p0, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method

.method public static min(JJJ)J
    .registers 7
    .param p0    # J
    .param p2    # J
    .param p4    # J

    cmp-long v0, p2, p0

    if-gez v0, :cond_5

    move-wide p0, p2

    :cond_5
    cmp-long v0, p4, p0

    if-gez v0, :cond_a

    move-wide p0, p4

    :cond_a
    return-wide p0
.end method

.method public static min([J)J
    .registers 6
    .param p0    # [J

    if-nez p0, :cond_a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The Array must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    array-length v3, p0

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Array cannot be empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    const/4 v3, 0x0

    aget-wide v1, p0, v3

    const/4 v0, 0x1

    :goto_19
    array-length v3, p0

    if-ge v0, v3, :cond_27

    aget-wide v3, p0, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_24

    aget-wide v1, p0, v0

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_27
    return-wide v1
.end method

.method public static min(SSS)S
    .registers 3
    .param p0    # S
    .param p1    # S
    .param p2    # S

    if-ge p1, p0, :cond_3

    move p0, p1

    :cond_3
    if-ge p2, p0, :cond_6

    move p0, p2

    :cond_6
    return p0
.end method

.method public static min([S)S
    .registers 5
    .param p0    # [S

    if-nez p0, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The Array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    array-length v2, p0

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Array cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    aget-short v1, p0, v2

    const/4 v0, 0x1

    :goto_19
    array-length v2, p0

    if-ge v0, v2, :cond_25

    aget-short v2, p0, v0

    if-ge v2, v1, :cond_22

    aget-short v1, p0, v0

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_25
    return v1
.end method

.method public static toByte(Ljava/lang/String;)B
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # B

    if-nez p0, :cond_3

    :goto_2
    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static toDouble(Ljava/lang/String;)D
    .registers 3
    .param p0    # Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # D

    if-nez p0, :cond_3

    :goto_2
    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static toFloat(Ljava/lang/String;)F
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # F

    if-nez p0, :cond_3

    :goto_2
    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static toInt(Ljava/lang/String;)I
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # I

    if-nez p0, :cond_3

    :goto_2
    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static toLong(Ljava/lang/String;)J
    .registers 3
    .param p0    # Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .registers 4
    .param p0    # Ljava/lang/String;
    .param p1    # J

    if-nez p0, :cond_3

    :goto_2
    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result-wide p1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method

.method public static toShort(Ljava/lang/String;)S
    .registers 2
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .registers 3
    .param p0    # Ljava/lang/String;
    .param p1    # S

    if-nez p0, :cond_3

    :goto_2
    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8

    move-result p1

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_2
.end method
