.class public abstract Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;,
        Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SHORT_PREFIX_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field public static final SIMPLE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

.field private static final serialVersionUID:J = -0x23ea08d00c05296cL


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$DefaultToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$MultiLineToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->MULTI_LINE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$ShortPrefixToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->SHORT_PREFIX_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    new-instance v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle$SimpleToStringStyle;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->SIMPLE_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    iput-boolean v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    const-string v0, "["

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    const-string v0, "]"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    const-string v0, "="

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    iput-boolean v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    iput-boolean v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    const-string v0, ","

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    const-string v0, "{"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    const-string v0, ","

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    const-string v0, "}"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    iput-boolean v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    const-string v0, "<null>"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    const-string v0, "<size="

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    const-string v0, ">"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    const-string v0, "<"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    const-string v0, ">"

    iput-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method static getRegistry()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .registers 3
    .param p0    # Ljava/lang/Object;

    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method static register(Ljava/lang/Object;)V
    .registers 4
    .param p0    # Ljava/lang/Object;

    if-eqz p0, :cond_1a

    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object v1, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method static unregister(Ljava/lang/Object;)V
    .registers 3
    .param p0    # Ljava/lang/Object;

    if-eqz p0, :cond_16

    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getRegistry()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_16
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # B

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # C

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # D

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # F

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # J

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Object;
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # S

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [B
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [C
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [D
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [F
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [I
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [J
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/Object;
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [S
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_8
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [Z
    .param p4    # Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_c

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_8
    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0, p4}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_8

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_8
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/Object;

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_18

    if-eqz p2, :cond_18

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_18
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1    # Ljava/lang/StringBuffer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1    # Ljava/lang/StringBuffer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Object;

    invoke-static {p1, p3}, Lexternal/org/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # B

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # C

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # D

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # J

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Object;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # S

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [B

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [C

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 7
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [D

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [F

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [I

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 7
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [J

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/Object;

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v2, p3

    if-ge v0, v2, :cond_20

    aget-object v1, p3, v0

    if-lez v0, :cond_12

    iget-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    if-nez v1, :cond_1a

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    iget-boolean v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_17

    :cond_20
    iget-object v2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [S

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 6
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [Z

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p3

    if-ge v0, v1, :cond_18

    if-lez v0, :cond_10

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/Object;

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_7
    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 3
    .param p1    # Ljava/lang/StringBuffer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/Object;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    invoke-static {p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1b
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 7
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Object;
    .param p4    # Z

    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->isRegistered(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    instance-of v1, p3, Ljava/lang/Number;

    if-nez v1, :cond_16

    instance-of v1, p3, Ljava/lang/Boolean;

    if-nez v1, :cond_16

    instance-of v1, p3, Ljava/lang/Character;

    if-nez v1, :cond_16

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendCyclicObject(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_15
    return-void

    :cond_16
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->register(Ljava/lang/Object;)V

    :try_start_19
    instance-of v1, p3, Ljava/util/Collection;

    if-eqz v1, :cond_3b

    if-eqz p4, :cond_2a

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_36

    :goto_26
    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    goto :goto_15

    :cond_2a
    :try_start_2a
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_36

    goto :goto_26

    :catchall_36
    move-exception v1

    invoke-static {p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    throw v1

    :cond_3b
    :try_start_3b
    instance-of v1, p3, Ljava/util/Map;

    if-eqz v1, :cond_55

    if-eqz p4, :cond_49

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_26

    :cond_49
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto :goto_26

    :cond_55
    instance-of v1, p3, [J

    if-eqz v1, :cond_6f

    if-eqz p4, :cond_65

    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    check-cast v1, [J

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_26

    :cond_65
    move-object v0, p3

    check-cast v0, [J

    move-object v1, v0

    check-cast v1, [J

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_26

    :cond_6f
    instance-of v1, p3, [I

    if-eqz v1, :cond_89

    if-eqz p4, :cond_7f

    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_26

    :cond_7f
    move-object v0, p3

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_26

    :cond_89
    instance-of v1, p3, [S

    if-eqz v1, :cond_a3

    if-eqz p4, :cond_99

    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    check-cast v1, [S

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_26

    :cond_99
    move-object v0, p3

    check-cast v0, [S

    move-object v1, v0

    check-cast v1, [S

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_26

    :cond_a3
    instance-of v1, p3, [B

    if-eqz v1, :cond_bf

    if-eqz p4, :cond_b4

    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_26

    :cond_b4
    move-object v0, p3

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_26

    :cond_bf
    instance-of v1, p3, [C

    if-eqz v1, :cond_db

    if-eqz p4, :cond_d0

    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    check-cast v1, [C

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_26

    :cond_d0
    move-object v0, p3

    check-cast v0, [C

    move-object v1, v0

    check-cast v1, [C

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_26

    :cond_db
    instance-of v1, p3, [D

    if-eqz v1, :cond_f7

    if-eqz p4, :cond_ec

    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    check-cast v1, [D

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_26

    :cond_ec
    move-object v0, p3

    check-cast v0, [D

    move-object v1, v0

    check-cast v1, [D

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto/16 :goto_26

    :cond_f7
    instance-of v1, p3, [F

    if-eqz v1, :cond_113

    if-eqz p4, :cond_108

    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    check-cast v1, [F

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_26

    :cond_108
    move-object v0, p3

    check-cast v0, [F

    move-object v1, v0

    check-cast v1, [F

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto/16 :goto_26

    :cond_113
    instance-of v1, p3, [Z

    if-eqz v1, :cond_12f

    if-eqz p4, :cond_124

    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    check-cast v1, [Z

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_26

    :cond_124
    move-object v0, p3

    check-cast v0, [Z

    move-object v1, v0

    check-cast v1, [Z

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto/16 :goto_26

    :cond_12f
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_151

    if-eqz p4, :cond_146

    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_146
    move-object v0, p3

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_151
    if-eqz p4, :cond_158

    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_158
    invoke-virtual {p0, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15b
    .catchall {:try_start_3b .. :try_end_15b} :catchall_36

    goto/16 :goto_26
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/Object;

    if-eqz p2, :cond_12

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_12
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Object;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [B

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [C

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [D

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [F

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [I

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [J

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/Object;

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [S

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # [Z

    array-length v0, p3

    invoke-virtual {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .registers 5
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;

    if-eqz p2, :cond_2d

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_2d

    if-ltz v1, :cond_2d

    if-ltz v2, :cond_2d

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v3, :cond_27

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_2d
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lexternal/org/apache/commons/lang3/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .registers 3
    .param p1    # Ljava/lang/Boolean;

    if-nez p1, :cond_5

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    :goto_4
    return v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_4
.end method

.method protected isUseClassName()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .registers 2

    iget-boolean v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8
    .param p1    # Ljava/lang/StringBuffer;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/Object;

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_25

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-lez v0, :cond_17

    iget-object v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    if-nez v1, :cond_1f

    invoke-virtual {p0, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1f
    iget-boolean v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_1c

    :cond_25
    iget-object v3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .registers 9
    .param p1    # Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget-object v4, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v1, :cond_2e

    if-lez v3, :cond_2e

    if-lt v1, v3, :cond_2e

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v3, :cond_27

    add-int/lit8 v4, v1, -0x1

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v6, v3, -0x1

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2f

    const/4 v2, 0x0

    :cond_27
    if-eqz v2, :cond_2e

    sub-int v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2e
    return-void

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method protected setArrayContentDetail(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayContentDetail:Z

    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->contentStart:Ljava/lang/String;

    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->defaultFullDetail:Z

    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtEnd:Z

    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->fieldSeparatorAtStart:Z

    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->nullText:Ljava/lang/String;

    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-void
.end method

.method protected setUseClassName(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useClassName:Z

    return-void
.end method

.method protected setUseFieldNames(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useFieldNames:Z

    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useIdentityHashCode:Z

    return-void
.end method

.method protected setUseShortClassName(Z)V
    .registers 2
    .param p1    # Z

    iput-boolean p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->useShortClassName:Z

    return-void
.end method
