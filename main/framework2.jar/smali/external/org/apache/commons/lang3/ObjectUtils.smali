.class public Lexternal/org/apache/commons/lang3/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/ObjectUtils$Null;
    }
.end annotation


# static fields
.field public static final NULL:Lexternal/org/apache/commons/lang3/ObjectUtils$Null;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lexternal/org/apache/commons/lang3/ObjectUtils$Null;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/ObjectUtils$Null;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/ObjectUtils;->NULL:Lexternal/org/apache/commons/lang3/ObjectUtils$Null;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    instance-of v7, p0, Ljava/lang/Cloneable;

    if-eqz v7, :cond_c1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_26

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    :cond_24
    :goto_24
    move-object v0, v6

    :goto_25
    return-object v0

    :cond_26
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    move v5, v4

    :goto_2f
    add-int/lit8 v4, v5, -0x1

    if-lez v5, :cond_24

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v4, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v5, v4

    goto :goto_2f

    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "clone"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_4f} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_4f} :catch_79
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_4f} :catch_9b

    move-result-object v6

    goto :goto_24

    :catch_51
    move-exception v3

    new-instance v7, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cloneable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has no clone method"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_79
    move-exception v3

    new-instance v7, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot clone Cloneable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :catch_9b
    move-exception v3

    new-instance v7, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception cloning Cloneable type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lexternal/org/apache/commons/lang3/exception/CloneFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_c1
    const/4 v0, 0x0

    goto/16 :goto_25
.end method

.method public static cloneIfPossible(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, v0

    goto :goto_6
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .registers 5
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p0, p1, :cond_6

    const/4 v0, 0x0

    :cond_5
    :goto_5
    return v0

    :cond_6
    if-nez p0, :cond_c

    if-nez p2, :cond_5

    move v0, v1

    goto :goto_5

    :cond_c
    if-nez p1, :cond_14

    if-eqz p2, :cond_12

    :goto_10
    move v0, v1

    goto :goto_5

    :cond_12
    move v1, v0

    goto :goto_10

    :cond_14
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_5
.end method

.method public static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    move-object p0, p1

    goto :goto_2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static varargs firstNonNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_f

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    if-eqz v3, :cond_c

    :goto_b
    return-object v3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    const/4 v3, 0x0

    goto :goto_b
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .registers 2
    .param p0    # Ljava/lang/Object;

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public static varargs hashCodeMulti([Ljava/lang/Object;)I
    .registers 8
    .param p0    # [Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz p0, :cond_15

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_15

    aget-object v4, v0, v2

    mul-int/lit8 v5, v1, 0x1f

    invoke-static {v4}, Lexternal/org/apache/commons/lang3/ObjectUtils;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int v1, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return v1
.end method

.method public static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Object;

    if-nez p0, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0}, Lexternal/org/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p0    # Ljava/lang/StringBuffer;
    .param p1    # Ljava/lang/Object;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot get the toString of a null identity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_15

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_15

    aget-object v4, v0, v1

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lexternal/org/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-lez v5, :cond_12

    move-object v3, v4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return-object v3
.end method

.method public static varargs median([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public static varargs median(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TT;>;[TT;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string v2, "null/empty items"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lexternal/org/apache/commons/lang3/Validate;->notEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/Validate;->noNullElements([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v2, "null comparator"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lexternal/org/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    aget-object v0, v2, v3

    return-object v0
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>([TT;)TT;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_15

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_15

    aget-object v4, v0, v1

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lexternal/org/apache/commons/lang3/ObjectUtils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v5

    if-gez v5, :cond_12

    move-object v3, v4

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return-object v3
.end method

.method public static varargs mode([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    new-instance v7, Ljava/util/HashMap;

    array-length v10, p0

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    move-object v0, p0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v5, :cond_2b

    aget-object v9, v0, v4

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    if-nez v2, :cond_27

    new-instance v10, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;-><init>(I)V

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_27
    invoke-virtual {v2}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->increment()V

    goto :goto_24

    :cond_2b
    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_35
    :goto_35
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexternal/org/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {v10}, Lexternal/org/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_4f

    const/4 v8, 0x0

    goto :goto_35

    :cond_4f
    if-le v1, v6, :cond_35

    move v6, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    goto :goto_35

    :cond_57
    const/4 v8, 0x0

    :cond_58
    return-object v8
.end method

.method public static notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/ObjectUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/Object;

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/String;

    if-nez p0, :cond_3

    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method
