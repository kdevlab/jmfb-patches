.class public abstract Lexternal/org/apache/commons/lang3/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareParameterTypes([Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    invoke-static {p2, p0}, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v0

    invoke-static {p2, p1}, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_e

    const/4 v2, -0x1

    :goto_d
    return v2

    :cond_e
    cmpg-float v2, v1, v0

    if-gez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    goto :goto_d
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz p0, :cond_23

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/high16 v1, 0x3e800000

    add-float/2addr v0, v1

    :cond_23
    if-nez p0, :cond_a

    const/high16 v1, 0x3fc00000

    add-float/2addr v0, v1

    goto :goto_a

    :cond_29
    const/high16 v1, 0x3f800000

    add-float/2addr v0, v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_c
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    const v5, 0x3dcccccd

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_10

    add-float/2addr v1, v5

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    :cond_10
    const/4 v2, 0x0

    :goto_11
    if-eq v0, p1, :cond_2f

    sget-object v3, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    if-ge v2, v3, :cond_2f

    sget-object v3, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    aget-object v3, v3, v2

    if-ne v0, v3, :cond_2c

    add-float/2addr v1, v5

    sget-object v3, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2c

    sget-object v3, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    add-int/lit8 v4, v2, 0x1

    aget-object v0, v3, v4

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2f
    return v1
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;[Ljava/lang/Class;)F
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)F"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_11

    aget-object v2, p0, v1

    aget-object v0, p1, v1

    invoke-static {v2, v0}, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return v3
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .registers 2
    .param p0    # Ljava/lang/reflect/Member;

    if-eqz p0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static isPackageAccess(I)Z
    .registers 2
    .param p0    # I

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V
    .registers 3
    .param p0    # Ljava/lang/reflect/AccessibleObject;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Lexternal/org/apache/commons/lang3/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :try_start_25
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_8

    :catch_29
    move-exception v1

    goto :goto_8
.end method
