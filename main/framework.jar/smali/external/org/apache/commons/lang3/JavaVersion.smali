.class public final enum Lexternal/org/apache/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lexternal/org/apache/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3fc00000

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_0_9"

    const-string v2, "0.9"

    invoke-direct {v0, v1, v6, v5, v2}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_1"

    const v2, 0x3f8ccccd

    const-string v3, "1.1"

    invoke-direct {v0, v1, v7, v2, v3}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_2"

    const v2, 0x3f99999a

    const-string v3, "1.2"

    invoke-direct {v0, v1, v8, v2, v3}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_3"

    const v2, 0x3fa66666

    const-string v3, "1.3"

    invoke-direct {v0, v1, v9, v2, v3}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_4"

    const/4 v2, 0x4

    const v3, 0x3fb33333

    const-string v4, "1.4"

    invoke-direct {v0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_5"

    const/4 v2, 0x5

    const-string v3, "1.5"

    invoke-direct {v0, v1, v2, v5, v3}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_6"

    const/4 v2, 0x6

    const v3, 0x3fcccccd

    const-string v4, "1.6"

    invoke-direct {v0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_7"

    const/4 v2, 0x7

    const v3, 0x3fd9999a

    const-string v4, "1.7"

    invoke-direct {v0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

    new-instance v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_8"

    const/16 v2, 0x8

    const v3, 0x3fe66666

    const-string v4, "1.8"

    invoke-direct {v0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;

    const/16 v0, 0x9

    new-array v0, v0, [Lexternal/org/apache/commons/lang3/JavaVersion;

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v1, v0, v6

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v1, v0, v7

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v1, v0, v8

    sget-object v1, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;

    aput-object v2, v0, v1

    sput-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->$VALUES:[Lexternal/org/apache/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .registers 5
    .param p3    # F
    .param p4    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->value:F

    iput-object p4, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-void
.end method

.method static get(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 2
    .param p0    # Ljava/lang/String;

    const-string v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_0_9:Lexternal/org/apache/commons/lang3/JavaVersion;

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_1:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_16
    const-string v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_2:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_21
    const-string v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_3:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_2c
    const-string v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_4:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_37
    const-string v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_5:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_42
    const-string v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_6:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_4d
    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_7:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_58
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->JAVA_1_8:Lexternal/org/apache/commons/lang3/JavaVersion;

    goto :goto_a

    :cond_63
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getJavaVersion(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 2
    .param p0    # Ljava/lang/String;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 2
    .param p0    # Ljava/lang/String;

    const-class v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lexternal/org/apache/commons/lang3/JavaVersion;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/JavaVersion;->$VALUES:[Lexternal/org/apache/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lexternal/org/apache/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexternal/org/apache/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lexternal/org/apache/commons/lang3/JavaVersion;)Z
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/JavaVersion;

    iget v0, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lexternal/org/apache/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
