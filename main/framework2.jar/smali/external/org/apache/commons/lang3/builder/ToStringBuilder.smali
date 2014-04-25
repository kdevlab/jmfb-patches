.class public Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"

# interfaces
.implements Lexternal/org/apache/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lexternal/org/apache/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
    .param p2    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
    .param p2    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p3    # Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_9

    invoke-static {}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getDefaultStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    :cond_9
    if-nez p3, :cond_12

    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    :cond_12
    iput-object p3, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iput-object p1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .registers 1

    sget-object v0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/Object;

    invoke-static {p0}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/Object;
    .param p1    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    invoke-static {p0, p1}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
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

.method public static reflectionToString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .registers 5
    .param p1    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lexternal/org/apache/commons/lang3/builder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lexternal/org/apache/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lexternal/org/apache/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lexternal/org/apache/commons/lang3/builder/ToStringStyle;)V
    .registers 3
    .param p0    # Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    sput-object p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method


# virtual methods
.method public append(B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # B

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # C

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # D

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # F

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # J

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # B

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # C

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # D

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # F

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # J

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # S

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [B

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [B
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [C

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [C
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [D

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [D
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [F

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [F
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [I

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [I
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [J

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [J
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [Ljava/lang/Object;
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [S

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [S
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 6
    .param p1    # Ljava/lang/String;
    .param p2    # [Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 7
    .param p1    # Ljava/lang/String;
    .param p2    # [Z
    .param p3    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # S

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # Z

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append([B)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [B

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([C)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [C

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([D)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [D

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([F)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [F

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([I)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [I

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([J)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [J

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append([S)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [S

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Z)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 5
    .param p1    # [Z

    const/4 v2, 0x0

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 3
    .param p1    # Ljava/lang/Object;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lexternal/org/apache/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 4
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;
    .registers 4
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;
    .registers 2

    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStyle()Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_15
    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    iget-object v0, p0, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->style:Lexternal/org/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lexternal/org/apache/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexternal/org/apache/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_15
.end method
