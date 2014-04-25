.class public Lexternal/org/apache/commons/lang3/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private suffixMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

.field private variableResolver:Lexternal/org/apache/commons/lang3/text/StrLookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "${"

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const-string v0, "}"

    invoke-static {v0}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x0

    check-cast v0, Lexternal/org/apache/commons/lang3/text/StrLookup;

    sget-object v1, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Lexternal/org/apache/commons/lang3/text/StrLookup;Lexternal/org/apache/commons/lang3/text/StrMatcher;Lexternal/org/apache/commons/lang3/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lexternal/org/apache/commons/lang3/text/StrLookup;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    sget-object v0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    sget-object v1, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Lexternal/org/apache/commons/lang3/text/StrLookup;Lexternal/org/apache/commons/lang3/text/StrMatcher;Lexternal/org/apache/commons/lang3/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Lexternal/org/apache/commons/lang3/text/StrLookup;Lexternal/org/apache/commons/lang3/text/StrMatcher;Lexternal/org/apache/commons/lang3/text/StrMatcher;C)V
    .registers 5
    .param p2    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p3    # Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .param p4    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Lexternal/org/apache/commons/lang3/text/StrMatcher;",
            "Lexternal/org/apache/commons/lang3/text/StrMatcher;",
            "C)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lexternal/org/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    invoke-virtual {p0, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    return-void
.end method

.method public constructor <init>(Lexternal/org/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 5
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariableResolver(Lexternal/org/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {p0, p2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    invoke-virtual {p0, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setEscapeChar(C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lexternal/org/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    sget-object v1, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_PREFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    sget-object v2, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->DEFAULT_SUFFIX:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Lexternal/org/apache/commons/lang3/text/StrLookup;Lexternal/org/apache/commons/lang3/text/StrMatcher;Lexternal/org/apache/commons/lang3/text/StrMatcher;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lexternal/org/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Lexternal/org/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .registers 6
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "C)V"
        }
    .end annotation

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrLookup;->mapLookup(Ljava/util/Map;)Lexternal/org/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Lexternal/org/apache/commons/lang3/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0    # Ljava/lang/Object;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .registers 7
    .param p0    # Ljava/lang/Object;
    .param p1    # Ljava/util/Properties;

    if-nez p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    return-object v4

    :cond_7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_24
    invoke-static {p0, v3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Object;

    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    invoke-static {}, Lexternal/org/apache/commons/lang3/text/StrLookup;->systemPropertiesLookup()Lexternal/org/apache/commons/lang3/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;-><init>(Lexternal/org/apache/commons/lang3/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I
    .registers 31
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexternal/org/apache/commons/lang3/text/StrBuilder;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->getVariablePrefixMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->getVariableSuffixMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->getEscapeChar()C

    move-result v12

    if-nez p4, :cond_29

    const/16 v20, 0x1

    :goto_10
    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v9, v0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v6, p2, p3

    move/from16 v15, p2

    :cond_1a
    :goto_1a
    if-ge v15, v6, :cond_11d

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v17

    if-nez v17, :cond_2c

    add-int/lit8 v15, v15, 0x1

    goto :goto_1a

    :cond_29
    const/16 v20, 0x0

    goto :goto_10

    :cond_2c
    move/from16 v0, p2

    if-le v15, v0, :cond_4b

    add-int/lit8 v24, v15, -0x1

    aget-char v24, v9, v24

    move/from16 v0, v24

    if-ne v0, v12, :cond_4b

    add-int/lit8 v24, v15, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->deleteCharAt(I)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-object/from16 v0, p1

    iget-object v9, v0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v13, v13, -0x1

    const/4 v5, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_1a

    :cond_4b
    move/from16 v18, v15

    add-int v15, v15, v17

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_51
    if-ge v15, v6, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v24

    if-eqz v24, :cond_67

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v10

    if-eqz v10, :cond_67

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v10

    goto :goto_51

    :cond_67
    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v9, v15, v1, v6}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->isMatch([CIII)I

    move-result v10

    if-nez v10, :cond_74

    add-int/lit8 v15, v15, 0x1

    goto :goto_51

    :cond_74
    if-nez v14, :cond_118

    new-instance v22, Ljava/lang/String;

    add-int v24, v18, v17

    sub-int v25, v15, v18

    sub-int v25, v25, v17

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v9, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {p0 .. p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v24

    if-eqz v24, :cond_a7

    new-instance v7, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x0

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v7}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    :cond_a7
    add-int/2addr v15, v10

    move v11, v15

    if-nez p4, :cond_c2

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct/range {p4 .. p4}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v9, v1, v2}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v11}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_109

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v11, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->replace(IILjava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v21

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v8

    add-int v24, v8, v21

    sub-int v25, v11, v18

    sub-int v8, v24, v25

    add-int/2addr v15, v8

    add-int/2addr v6, v8

    add-int/2addr v13, v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lexternal/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    :cond_109
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, p4

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1a

    :cond_118
    add-int/lit8 v14, v14, -0x1

    add-int/2addr v15, v10

    goto/16 :goto_51

    :cond_11d
    if-eqz v20, :cond_127

    if-eqz v5, :cond_124

    const/16 v24, 0x1

    :goto_123
    return v24

    :cond_124
    const/16 v24, 0x0

    goto :goto_123

    :cond_127
    move/from16 v24, v13

    goto :goto_123
.end method


# virtual methods
.method public getEscapeChar()C
    .registers 2

    iget-char v0, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getVariablePrefixMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lexternal/org/apache/commons/lang3/text/StrLookup;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lexternal/org/apache/commons/lang3/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lexternal/org/apache/commons/lang3/text/StrMatcher;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public replace(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Ljava/lang/String;
    .registers 5
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replace(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .registers 6
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/Object;

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :cond_3
    :goto_3
    return-object p1

    :cond_4
    new-instance v0, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v0, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1b

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_1b
    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replace([C)Ljava/lang/String;
    .registers 5
    .param p1    # [C

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    array-length v2, p1

    invoke-direct {v1, v2}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([C)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replace([CII)Ljava/lang/String;
    .registers 6
    .param p1    # [C
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_4

    const/4 v1, 0x0

    :goto_3
    return-object v1

    :cond_4
    new-instance v1, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v1, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append([CII)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public replaceIn(Lexternal/org/apache/commons/lang3/text/StrBuilder;)Z
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_3
.end method

.method public replaceIn(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z
    .registers 5
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v0

    goto :goto_3
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    goto :goto_3
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .registers 7
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v1

    :cond_4
    new-instance v2, Lexternal/org/apache/commons/lang3/text/StrBuilder;

    invoke-direct {v2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    invoke-virtual {v2, p1, p2, p3}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lexternal/org/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, v1, p3}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int v1, p2, p3

    invoke-virtual {v0}, Lexternal/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_3
.end method

.method protected resolveVariable(Ljava/lang/String;Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Ljava/lang/String;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p3    # I
    .param p4    # I

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->getVariableResolver()Lexternal/org/apache/commons/lang3/text/StrLookup;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0, p1}, Lexternal/org/apache/commons/lang3/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return-void
.end method

.method public setEscapeChar(C)V
    .registers 2
    .param p1    # C

    iput-char p1, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->escapeChar:C

    return-void
.end method

.method public setVariablePrefix(C)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;
    .registers 3
    .param p1    # C

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;
    .registers 4
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariablePrefixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->prefixMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method public setVariableResolver(Lexternal/org/apache/commons/lang3/text/StrLookup;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexternal/org/apache/commons/lang3/text/StrLookup",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->variableResolver:Lexternal/org/apache/commons/lang3/text/StrLookup;

    return-void
.end method

.method public setVariableSuffix(C)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;
    .registers 3
    .param p1    # C

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->charMatcher(C)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;
    .registers 4
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p1}, Lexternal/org/apache/commons/lang3/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->setVariableSuffixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffixMatcher(Lexternal/org/apache/commons/lang3/text/StrMatcher;)Lexternal/org/apache/commons/lang3/text/StrSubstitutor;
    .registers 4
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrMatcher;

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->suffixMatcher:Lexternal/org/apache/commons/lang3/text/StrMatcher;

    return-object p0
.end method

.method protected substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;II)Z
    .registers 5
    .param p1    # Lexternal/org/apache/commons/lang3/text/StrBuilder;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lexternal/org/apache/commons/lang3/text/StrSubstitutor;->substitute(Lexternal/org/apache/commons/lang3/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
