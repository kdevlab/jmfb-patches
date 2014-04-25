.class public Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .registers 12
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
    .param p3    # Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .param p4    # Z
    .param p5    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v3, 0x0

    :goto_9
    array-length v4, v2

    if-ge v3, v4, :cond_56

    iget v4, p3, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v4, :cond_56

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lexternal/org/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4a

    if-nez p4, :cond_35

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_4a

    :cond_35
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_4a

    :try_start_3f
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_4a} :catch_4d

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catch_4d
    move-exception v0

    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_56
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v2, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .registers 4
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
    .param p2    # Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .registers 11
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
    .param p2    # Z
    .param p4    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_1e
    new-instance v3, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v3}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    :goto_2a
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3e

    if-eq v2, p3, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_2a

    :cond_3e
    invoke-virtual {v3}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    goto :goto_3
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/lang/Object;
    .param p2    # [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # B
    .param p2    # B

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(CC)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # C
    .param p2    # C

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(DD)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1    # D
    .param p3    # D

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(FF)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # F
    .param p2    # F

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append(II)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(JJ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 6
    .param p1    # J
    .param p3    # J

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    cmp-long v0, p1, p3

    if-gez v0, :cond_d

    const/4 v0, -0x1

    :goto_a
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_d
    cmp-long v0, p1, p3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 7
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    iget v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    if-eq p1, p2, :cond_4

    if-nez p1, :cond_d

    const/4 v2, -0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_d
    if-nez p2, :cond_13

    const/4 v2, 0x1

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_ac

    instance-of v2, p1, [J

    if-eqz v2, :cond_2d

    check-cast p1, [J

    check-cast p1, [J

    check-cast p2, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([J[J)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_4

    :cond_2d
    instance-of v2, p1, [I

    if-eqz v2, :cond_3d

    check-cast p1, [I

    check-cast p1, [I

    check-cast p2, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([I[I)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_4

    :cond_3d
    instance-of v2, p1, [S

    if-eqz v2, :cond_4d

    check-cast p1, [S

    check-cast p1, [S

    check-cast p2, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([S[S)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_4

    :cond_4d
    instance-of v2, p1, [C

    if-eqz v2, :cond_5d

    check-cast p1, [C

    check-cast p1, [C

    check-cast p2, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([C[C)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_4

    :cond_5d
    instance-of v2, p1, [B

    if-eqz v2, :cond_6d

    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([B[B)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_4

    :cond_6d
    instance-of v2, p1, [D

    if-eqz v2, :cond_7d

    check-cast p1, [D

    check-cast p1, [D

    check-cast p2, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([D[D)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto :goto_4

    :cond_7d
    instance-of v2, p1, [F

    if-eqz v2, :cond_8e

    check-cast p1, [F

    check-cast p1, [F

    check-cast p2, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([F[F)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_4

    :cond_8e
    instance-of v2, p1, [Z

    if-eqz v2, :cond_9f

    check-cast p1, [Z

    check-cast p1, [Z

    check-cast p2, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_4

    :cond_9f
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_4

    :cond_ac
    if-nez p3, :cond_b9

    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_4

    :cond_b9
    move-object v1, p3

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_4
.end method

.method public append(SS)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # S
    .param p2    # S

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    if-ge p1, p2, :cond_b

    const/4 v0, -0x1

    :goto_8
    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_b
    if-le p1, p2, :cond_f

    const/4 v0, 0x1

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public append(ZZ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # Z
    .param p2    # Z

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    if-eq p1, p2, :cond_4

    if-nez p1, :cond_d

    const/4 v0, -0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4

    :cond_d
    const/4 v0, 0x1

    iput v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public append([B[B)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [B
    .param p2    # [B

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(BB)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([C[C)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [C
    .param p2    # [C

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(CC)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([D[D)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [D
    .param p2    # [D

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(DD)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([F[F)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [F
    .param p2    # [F

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(FF)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([I[I)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [I
    .param p2    # [I

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(II)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([J[J)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [J
    .param p2    # [J

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(JJ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 4
    .param p1    # [Ljava/lang/Object;
    .param p2    # [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 9
    .param p1    # [Ljava/lang/Object;
    .param p2    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([S[S)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [S
    .param p2    # [S

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(SS)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public append([Z[Z)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 8
    .param p1    # [Z
    .param p2    # [Z

    const/4 v2, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_7

    :cond_6
    :goto_6
    return-object p0

    :cond_7
    if-eq p1, p2, :cond_6

    if-nez p1, :cond_e

    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_e
    if-nez p2, :cond_13

    iput v2, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_13
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_20

    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_1e

    :goto_1b
    iput v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_6

    :cond_1e
    move v1, v2

    goto :goto_1b

    :cond_20
    const/4 v0, 0x0

    :goto_21
    array-length v1, p1

    if-ge v0, v1, :cond_6

    iget v1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_6

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method public appendSuper(I)Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;
    .registers 3
    .param p1    # I

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iput p1, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_4
.end method

.method public build()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .registers 2

    iget v0, p0, Lexternal/org/apache/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
