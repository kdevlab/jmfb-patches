.class public Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;
.super Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field protected excludeFieldNames:[Ljava/lang/String;

.field private upToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
    .param p2    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p3    # Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .registers 8
    .param p2    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p3    # Ljava/lang/StringBuffer;
    .param p5    # Z
    .param p6    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class",
            "<-TT;>;ZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    iput-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    invoke-virtual {p0, p5}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    invoke-virtual {p0, p6}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    return-void
.end method

.method static toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_5

    sget-object v0, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method static toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .registers 7
    .param p0    # [Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    sget-object v5, Lexternal/org/apache/commons/lang3/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v0, v1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/Object;
    .param p1    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2    # Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p1    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2    # Z
    .param p3    # Z

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .registers 12
    .param p1    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2    # Z
    .param p3    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Object;
    .param p1    # [Ljava/lang/String;

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .registers 5
    .param p1    # Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_1f
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_2f
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_e

    :cond_3f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v8}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;

    :cond_d
    return-void

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v5, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    move-object v0, v5

    array-length v7, v0

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v7, :cond_d

    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_2e

    :try_start_27
    invoke-virtual {p0, v2}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_2e} :catch_31

    :cond_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :catch_31
    move-exception v1

    new-instance v8, Ljava/lang/InternalError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected IllegalAccessException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUpToClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAppendStatics()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public isAppendTransients()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/Object;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setAppendStatics(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendStatics:Z

    return-void
.end method

.method public setAppendTransients(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendTransients:Z

    return-void
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;
    .registers 3
    .param p1    # [Ljava/lang/String;

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    :goto_5
    return-object p0

    :cond_6
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified class is not a superclass of the object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_1a

    :cond_2e
    invoke-super {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method
