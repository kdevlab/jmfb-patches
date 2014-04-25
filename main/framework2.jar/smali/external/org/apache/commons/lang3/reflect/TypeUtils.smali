.class public Lexternal/org/apache/commons/lang3/reflect/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 8
    .param p1    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_c

    :goto_b
    return-object v4

    :cond_c
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {p1, v3, v4}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b

    :cond_17
    invoke-static {p0, v3}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v5, v2, Ljava/lang/Class;

    if-eqz v5, :cond_26

    check-cast v2, Ljava/lang/Class;

    invoke-static {v2, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b

    :cond_26
    move-object v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->determineTypeArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;

    move-result-object v4

    invoke-static {p0, v1, v4}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    goto :goto_b
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .param p0    # Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_13

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    :cond_12
    :goto_12
    return-object v1

    :cond_13
    instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_12

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_12
.end method

.method private static getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v7

    if-eqz v7, :cond_52

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v1, 0x0

    move-object v0, v3

    array-length v4, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v4, :cond_4f

    aget-object v6, v0, v2

    const/4 v5, 0x0

    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_2e

    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v7}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v5

    :goto_1e
    invoke-static {v5, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-static {v1, v5}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v7

    if-eqz v7, :cond_2b

    move-object v1, v6

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2e
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_36

    move-object v5, v6

    check-cast v5, Ljava/lang/Class;

    goto :goto_1e

    :cond_36
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected generic interface type found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4f
    if-eqz v1, :cond_52

    :goto_51
    return-object v1

    :cond_52
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_51
.end method

.method public static getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    :goto_f
    return-object v1

    :cond_10
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_f
.end method

.method public static getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 4
    .param p0    # Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_e

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_e
    return-object v0
.end method

.method public static getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;
    .registers 5
    .param p0    # Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    :goto_f
    return-object v1

    :cond_10
    invoke-static {v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_f
.end method

.method private static getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;
    .registers 5
    .param p0    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_21

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait... What!? Type of rawType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .registers 9
    .param p0    # Ljava/lang/reflect/Type;
    .param p1    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v5, 0x0

    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_8

    check-cast p0, Ljava/lang/Class;

    :goto_7
    return-object p0

    :cond_8
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_13

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    :cond_13
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_41

    if-nez p1, :cond_1b

    move-object p0, v5

    goto :goto_7

    :cond_1b
    move-object v4, p0

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Class;

    if-nez v4, :cond_28

    move-object p0, v5

    goto :goto_7

    :cond_28
    check-cast v0, Ljava/lang/Class;

    invoke-static {p1, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_32

    move-object p0, v5

    goto :goto_7

    :cond_32
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    if-nez v2, :cond_3c

    move-object p0, v5

    goto :goto_7

    :cond_3c
    invoke-static {v2, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    :cond_41
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_59

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_7

    :cond_59
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_5f

    move-object p0, v5

    goto :goto_7

    :cond_5f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_7

    :cond_1a
    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    :cond_1e
    if-nez p2, :cond_3b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_25
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_7

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_7

    :cond_3b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_25
.end method

.method public static getTypeArguments(Ljava/lang/reflect/ParameterizedType;)Ljava/util/Map;
    .registers 3
    .param p0    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 13
    .param p0    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v7, 0x0

    :cond_b
    :goto_b
    return-object v7

    :cond_c
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_41

    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {v3, v8, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    :goto_1f
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    const/4 v1, 0x0

    :goto_28
    array-length v8, v6

    if-ge v1, v8, :cond_51

    aget-object v4, v5, v1

    aget-object v9, v6, v1

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    :goto_3b
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_41
    if-nez p2, :cond_49

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :goto_48
    goto :goto_1f

    :cond_49
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_48

    :cond_4f
    move-object v8, v4

    goto :goto_3b

    :cond_51
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getClosestParentType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v8, p1, v7}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    goto :goto_b
.end method

.method public static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;
    .registers 3
    .param p0    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .registers 10
    .param p0    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_c

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    :cond_b
    :goto_b
    return-object v4

    :cond_c
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_17

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b

    :cond_17
    instance-of v5, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_30

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :cond_2b
    invoke-static {v4, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b

    :cond_30
    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_4e

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v3, :cond_b

    aget-object v1, v0, v2

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-static {v1, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b

    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4e
    instance-of v5, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_6c

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_5a
    if-ge v2, v3, :cond_b

    aget-object v1, v0, v2

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-static {v1, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    goto :goto_b

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_6c
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found an unhandled type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static isArrayType(Ljava/lang/reflect/Type;)Z
    .registers 2
    .param p0    # Ljava/lang/reflect/Type;

    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z
    .registers 10
    .param p0    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_e

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    move v4, v5

    :cond_d
    :goto_d
    return v4

    :cond_e
    if-eqz p1, :cond_d

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v4, v5

    goto :goto_d

    :cond_18
    instance-of v6, p0, Ljava/lang/Class;

    if-eqz v6, :cond_23

    check-cast p0, Ljava/lang/Class;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v4

    goto :goto_d

    :cond_23
    instance-of v6, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_32

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v4

    goto :goto_d

    :cond_32
    instance-of v6, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_4d

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4a

    move v4, v5

    goto :goto_d

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_4d
    instance-of v6, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v6, :cond_71

    const-class v6, Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6f

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_d

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6, v7}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_6f
    move v4, v5

    goto :goto_d

    :cond_71
    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    if-nez v5, :cond_d

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found an unhandled type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z
    .registers 12
    .param p0    # Ljava/lang/reflect/Type;
    .param p1    # Ljava/lang/reflect/GenericArrayType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/GenericArrayType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v6

    :cond_5
    if-nez p1, :cond_9

    move v6, v7

    goto :goto_4

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    instance-of v8, p0, Ljava/lang/Class;

    if-eqz v8, :cond_2c

    move-object v2, p0

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8, v5, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_2a
    move v6, v7

    goto :goto_4

    :cond_2c
    instance-of v8, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v8, :cond_3b

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v6, v5, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v6

    goto :goto_4

    :cond_3b
    instance-of v8, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v8, :cond_56

    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_47
    if-ge v3, v4, :cond_54

    aget-object v1, v0, v3

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_54
    move v6, v7

    goto :goto_4

    :cond_56
    instance-of v8, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_71

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_62
    if-ge v3, v4, :cond_6f

    aget-object v1, v0, v3

    invoke-static {v1, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_6f
    move v6, v7

    goto :goto_4

    :cond_71
    instance-of v6, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v6, :cond_77

    move v6, v7

    goto :goto_4

    :cond_77
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "found an unhandled type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 13
    .param p0    # Ljava/lang/reflect/Type;
    .param p1    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v7

    :cond_5
    if-nez p1, :cond_9

    move v7, v8

    goto :goto_4

    :cond_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x0

    invoke-static {p0, v4, v9}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1c

    move v7, v8

    goto :goto_4

    :cond_1c
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {p1, v4, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/ParameterizedType;Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Type;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-eqz v1, :cond_2e

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2e

    instance-of v9, v5, Ljava/lang/reflect/WildcardType;

    if-eqz v9, :cond_5c

    invoke-static {v1, v5, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v9

    if-nez v9, :cond_2e

    :cond_5c
    move v7, v8

    goto :goto_4
.end method

.method public static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .registers 3
    .param p0    # Ljava/lang/reflect/Type;
    .param p1    # Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 6
    .param p0    # Ljava/lang/reflect/Type;
    .param p1    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_6

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_d

    :cond_6
    check-cast p1, Ljava/lang/Class;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/Class;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_18

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    :cond_18
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_23

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    :cond_23
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2e

    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    :cond_2e
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_39

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v0

    goto :goto_c

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found an unhandled type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z
    .registers 11
    .param p0    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p0, :cond_6

    move v5, v6

    :goto_5
    return v5

    :cond_6
    if-nez p1, :cond_a

    move v5, v7

    goto :goto_5

    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v6

    goto :goto_5

    :cond_12
    instance-of v5, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_2f

    move-object v5, p0

    check-cast v5, Ljava/lang/reflect/TypeVariable;

    invoke-static {v5}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v4, :cond_2f

    aget-object v1, v0, v3

    invoke-static {v1, p1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move v5, v6

    goto :goto_5

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2f
    instance-of v5, p0, Ljava/lang/Class;

    if-nez v5, :cond_3f

    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_3f

    instance-of v5, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v5, :cond_3f

    instance-of v5, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v5, :cond_41

    :cond_3f
    move v5, v7

    goto :goto_5

    :cond_41
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found an unhandled type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/WildcardType;Ljava/util/Map;)Z
    .registers 18
    .param p0    # Ljava/lang/reflect/Type;
    .param p1    # Ljava/lang/reflect/WildcardType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/WildcardType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v14, 0x1

    :goto_3
    return v14

    :cond_4
    if-nez p1, :cond_8

    const/4 v14, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/4 v14, 0x1

    goto :goto_3

    :cond_12
    invoke-static/range {p1 .. p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v10

    instance-of v14, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v14, :cond_77

    move-object v13, p0

    check-cast v13, Ljava/lang/reflect/WildcardType;

    invoke-static {v13}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitUpperBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v12

    invoke-static {v13}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitLowerBounds(Ljava/lang/reflect/WildcardType;)[Ljava/lang/reflect/Type;

    move-result-object v8

    move-object v1, v11

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_2d
    if-ge v5, v6, :cond_4f

    aget-object v9, v1, v5

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v2, v12

    array-length v7, v2

    const/4 v4, 0x0

    :goto_3a
    if-ge v4, v7, :cond_4b

    aget-object v3, v2, v4

    move-object/from16 v0, p2

    invoke-static {v3, v9, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v14

    if-nez v14, :cond_48

    const/4 v14, 0x0

    goto :goto_3

    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    :cond_4b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2d

    :cond_4f
    move-object v1, v10

    array-length v6, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_53
    if-ge v5, v6, :cond_75

    aget-object v9, v1, v5

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v2, v8

    array-length v7, v2

    const/4 v4, 0x0

    :goto_60
    if-ge v4, v7, :cond_71

    aget-object v3, v2, v4

    move-object/from16 v0, p2

    invoke-static {v9, v3, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v14

    if-nez v14, :cond_6e

    const/4 v14, 0x0

    goto :goto_3

    :cond_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_60

    :cond_71
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_53

    :cond_75
    const/4 v14, 0x1

    goto :goto_3

    :cond_77
    move-object v1, v11

    array-length v6, v1

    const/4 v4, 0x0

    :goto_7a
    if-ge v4, v6, :cond_92

    aget-object v9, v1, v4

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {p0, v14, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v14

    if-nez v14, :cond_8f

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    :cond_92
    move-object v1, v10

    array-length v6, v1

    const/4 v4, 0x0

    :goto_95
    if-ge v4, v6, :cond_ad

    aget-object v9, v1, v4

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-static {v14, p0, v0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v14

    if-nez v14, :cond_aa

    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_aa
    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    :cond_ad
    const/4 v14, 0x1

    goto/16 :goto_3
.end method

.method public static isInstance(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .registers 4
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    if-nez p0, :cond_14

    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_12

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_12
    const/4 v0, 0x1

    goto :goto_3

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v0

    goto :goto_3
.end method

.method private static mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V
    .registers 11
    .param p1    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v7, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_d

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v1, p2}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->mapTypeVariablesToArguments(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)V

    :cond_d
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getRawType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v0, 0x0

    :goto_22
    array-length v7, v3

    if-ge v0, v7, :cond_41

    aget-object v4, v6, v0

    aget-object v2, v3, v0

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p2, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_41
    return-void
.end method

.method public static normalizeUpperBounds([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .registers 13
    .param p0    # [Ljava/lang/reflect/Type;

    array-length v10, p0

    const/4 v11, 0x2

    if-ge v10, v11, :cond_5

    :goto_4
    return-object p0

    :cond_5
    new-instance v9, Ljava/util/HashSet;

    array-length v10, p0

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(I)V

    move-object v0, p0

    array-length v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v4, :cond_31

    aget-object v7, v0, v3

    const/4 v6, 0x0

    move-object v1, p0

    array-length v5, v1

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v5, :cond_25

    aget-object v8, v1, v2

    if-eq v7, v8, :cond_2e

    const/4 v10, 0x0

    invoke-static {v8, v7, v10}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v10

    if-eqz v10, :cond_2e

    const/4 v6, 0x1

    :cond_25
    if-nez v6, :cond_2a

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_31
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/reflect/Type;

    invoke-interface {v9, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/reflect/Type;

    move-object p0, v10

    goto :goto_4
.end method

.method private static substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .registers 6
    .param p0    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_27

    if-eqz p1, :cond_27

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_28

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing assignment type for type variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    move-object v0, p0

    :cond_28
    return-object v0
.end method

.method public static typesSatisfyVariables(Ljava/util/Map;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    invoke-static {v7}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->getImplicitBounds(Ljava/lang/reflect/TypeVariable;)[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v5, :cond_8

    aget-object v1, v0, v4

    invoke-static {v1, p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->substituteTypeVariables(Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-static {v6, v8, p0}, Lexternal/org/apache/commons/lang3/reflect/TypeUtils;->isAssignable(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v8

    if-nez v8, :cond_36

    const/4 v8, 0x0

    :goto_35
    return v8

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_39
    const/4 v8, 0x1

    goto :goto_35
.end method
